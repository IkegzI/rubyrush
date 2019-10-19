require 'rexml/document'

xml = REXML::Document.new(File.read("#{File.dirname(__FILE__)}/project6/visit_cart.xml"))
html = REXML::Document.new

xml_attr = xml.root.get_elements('cart')


html = html.add_element 'html', {
    'lang' => 'en'
}
head = html.add_element 'head', {}
head.add_element 'meta', {'charset' => "UTF-8"}
head.add_element('title').add_text('Визитная карточка')


body = html.add_element 'body'
head = body.add_element 'head'

src = 0
xml_attr.each_entry { |item| item.each_element('photo') { |i| src = i.attribute('src').value } }
head.add_element 'img', {
    'src' => "#{src}"
}

div = body.add_element 'div'
f = 0
l = 0
xml_attr.each_entry do |item|
  item.each_element('name') do |i|
    f = i.attribute('first').value
    l = i.attribute('last').value
  end
end
div.add_element('p').add_text("#{f} #{l}")

div = body.add_element 'div'
xml_attr.each_entry do |item|
  item.each_element('contacts') do |i|
    div.add_element('p').add_text ("#{i.attribute('name')} #{i.attribute('exp')}\n")
  end
end

div = body.add_element 'div'
div.add_element('h4').add_text('Контакты')
xml_attr.each_entry do |item|
  item.each_element('contacts') do |i|
  a = div.add_element 'a', { 'href'  => "tel: #{i.attribute('phone')}"}
  a.add_element('p').add_text(" ☎ #{i.attribute('phone')}")
  a = div.add_element 'a', { 'href'  => "mailto: 1@1.ru"}
  a.add_element('p').add_text(" 📧 #{i.attribute('email')}")
  a = div.add_element 'a', { 'href'  => "skype: kerantus"}
  a.add_element('p').add_text("skype: #{i.attribute('skype')}")
  a = div.add_element 'a', { 'href'  => "#"}
  a.add_element('p').add_text("telegram:#{i.attribute('telegram')}")
  end
end


file = File.new("#{File.dirname(__FILE__)}/project6/visit_cart.html", 'w:UTF-8')
file.puts "<!DOCTYPE HTML>"
html.write(file, 3)
file.close