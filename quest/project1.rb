puts 'Решили прогуляться по своему району и к вам подошли...'
puts
a = []

loop do
  puts 'Кто подошёл?'
  puts '1 - Плохая пятёрка'
  puts '2 - Мистер Бин'
  puts '3 - Бетмен'

 i = gets.to_i
  if i > 3 then
    puts 'Введите правилный ответ'
  else
    a << i
    break
  end
end
puts
loop do
puts 'Он говори?'
puts '1 - Как пройти в библиотеку?'
puts '2 - Сигарета или жизнь?!'
puts '3 - Кря-Кря'

i = gets.to_i
if i > 3 then
  puts 'Введите правилный ответ'
else
  a << i
  break
end
end

loop do
puts
puts 'Вы попытались..'
puts '1 - Убежать'
puts '2 - Дать по щам'
puts '3 - Погладить мышку'
i = gets.to_i
if i > 3 then
  puts 'Введите правилный ответ'
else
  a << i
  break
end
end

unless a[0] == '1' or a[1] == '2' and a[2] == '1' then

  loop do
  puts
  puts 'Вас догнали и ...'
  puts '1 - Дали по щам'
  puts '2 - Вы дали по щам'
  puts '3 - Погладили котика и все ми-ми-ми... и разошлись'
  i = gets.to_i
  if i > 3
    puts 'Введите правилный ответ'
  else
    a << i
    break
  end
  end

else

  puts "Вы супермеееен!"

end

if a.last == '1'
  puts "GodLike!"
else
  puts "Лузер!"
end
puts a
