a = []
3.times do |i|
  puts "Введите число номер № #{i}"
  a << gets.to_i
end
puts "Среднее арифмитическое равно #{(a.inject{|sum,x| sum + x })/3}"
