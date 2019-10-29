require 'net/http'
require 'open-uri'
require 'nokogiri'
require 'byebug'
#require 'rexml/document'




url = "./project3/visit_cart.xml"
html = open(url)
data = {}
doc = Nokogiri::XML.parse(html)
doc.root.children.children.each do |elem|
  byebug
  p elem.elem?
  p elem
end