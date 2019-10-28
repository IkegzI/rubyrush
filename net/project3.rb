require 'net/http'
require 'uri'
require 'rexml/document'
uri = URI.parse("http://www.cbr.ru/scripts/XML_daily.asp")

response = Net::HTTP.get_response(uri)
doc = REXML::Document.new(response.body)
doc.root
