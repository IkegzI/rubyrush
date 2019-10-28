require 'net/http'
require 'open-uri'
require 'nokogiri'
require 'rexml/document'

url = "https://www.meteoservice.ru/content/export.html"
html = open(url)
doc = Nokogiri::HTML(html)
elem = doc.css('#city_list')

p elem