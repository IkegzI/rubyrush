
require 'rexml/document'
xml = REXML::Document.new(File.read("#{File.dirname(__FILE__)}/project6/visit_cart.xml"))
xml_attr = xml.root.get_elements('cart')
pitr = 0
xml_attr.each_entry {|item| item.each_element('profession') do |i|
  i.attribute('name'), i.attribute('exp')
end
}
"#{i.attribute('name')" "#{i.attribute('exp')}"