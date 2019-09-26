puts "Выберете валюту:"
puts "1 - Доллар"
puts "2 - Рубль"
currency = {1 => 'Доллар', 2 => 'Рубль'}
arr =[]
arr[0] = currency[gets.to_i]
arr[0]=='Доллар' ? arr[1]=currency[2] : arr[1]=currency[1]

puts "Сколько стоит #{currency[1]}:"
course = gets.to_f

puts "Сколько у вас валюты #{arr[0]}?"
summ = gets.to_i


puts "У вас #{ arr[0]=='Доллар' ? (summ * course).round(2) : (summ / course).round(2) }#{arr[0]=='Доллар' ? 'руб' : '$'}"