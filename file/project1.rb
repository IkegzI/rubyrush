a = File.readlines("#{File.dirname(__FILE__)}/project1/text.txt")
sum_nil = 0
sum_text = 0
puts
a.each do |item|
  if item == "\r\n"
	sum_nil += 1
end
unless item == "\r\n"
	sum_text += 1
  puts item
end

end
puts "============================="
puts "Пустых строк: #{sum_nil}"
puts "Строк с тектом: #{sum_text}"
puts "Всего строк: #{a.size}"
puts
