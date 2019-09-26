text = File.read("#{File.dirname(__FILE__)}/project3/text.txt")
rexex = /(?<![а-яa-z\d])([а-яА-Яa-zA-Z]{3})[\s\.\?\!\,]/
text_scan = text.scan(rexex).flatten
puts text_scan.inspect
puts "Всего слов длинной 3 символа : #{text_scan.size}"