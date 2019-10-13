require 'rexml/document'
file = File.open("./project1/visit_cart.xml")
a = REXML::Document.new(file)
a.root.get_elements('cart1').each_entry do |cart|
  cart.each_element do |elem|
    puts elem.name + ":   \t" + (elem.text || '')
    elem.attributes.each_key do |attrs|
      puts elem.attribute("#{attrs}").name + ":   \t" + elem.attribute("#{attrs}").value
    end
  end
end
