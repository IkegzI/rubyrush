require 'rexml/document'

def file_data(file)
  section = {}
  #number = nil
  a = REXML::Document.new(file)
  a.root.get_elements('cart').each_entry do |cart|
    cart.each_element do |elem|
      name_section = elem.name.to_sym

      unless (elem.attribute('number').nil? and name_section != 'profession')
        number = elem.attribute('number').value
      else
        number = nil
      end

      if number.nil?
        section[name_section] = elem.text || {}
      else
        section[name_section] = {} if section[name_section].nil?
        section[name_section][number] = {}
      end

      elem.attributes.each_key do |attrs|
        if number.nil?
          section[name_section][elem.attribute("#{attrs}").name] = elem.attribute("#{attrs}").value
        elsif attrs != 'number'
          section[name_section][number][elem.attribute("#{attrs}").name] = elem.attribute("#{attrs}").value
        end
      end

    end
  end
  section
end


file = File.open("./project1/visit_cart.xml")
data = file_data file

data[:name].each_value { |value| print value + ' ' }
unless data[:contacts].nil?
 puts
 puts "Contacts:"
 data[:contacts].each_key { |key| print key + '=>' + data[:contacts][key] + ' ' }
end
puts
puts "Locate:"
data[:locate].each_value { |value| print value + ' ' }
puts
unless data[:profession].nil?
  puts 'Profession:'
  if data[:profession].size > 1
    data[:profession].each_key do |key|
      data[:profession][key].each_value { |k| print "#{k} " }
      puts
    end
  else
   data[:profession].each_value { |k| print "#{k} " }
  end
end
puts 'Addition: '
puts data[:letter]

