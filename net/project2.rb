require 'net/http'
require 'open-uri'
require 'nokogiri'
#require 'rexml/document'

what_info = ["R01235", "R01239", "R01820", "R01375", "R01035"]


url = "http://www.cbr.ru/scripts/XML_daily.asp"
html = open(url)
data = {}
doc = Nokogiri::XML.parse(html)
date_course = doc.root.attr('Date')
doc.root.children.each do |elem|
     if what_info.include?(elem.attr('ID'))
       hash_name = elem.children[1].text.to_sym
       data[hash_name] = {}
       data[hash_name][:nominal] = elem.children[2].text
       data[hash_name][:name_rus] = elem.children[3].text
       data[hash_name][:course] = elem.children[4].text
     end
end
puts "Курсы на #{date_course}:"
data.each_key {|key| puts "#{data[key][:nominal]} #{data[key][:name_rus]} (#{key}) стоит #{data[key][:course]}" }

