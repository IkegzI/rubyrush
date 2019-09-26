brend = {
    1 => 'Toyota',
    2 => 'Honda',
    3 => 'Subaru',
    4 => 'VolksVagen',
    5 => 'Mercedes',
    6 => 'Audi',
    7 => 'Citroen'
}

puts "У нас есть #{brend.size}, вам какую?"
a = gets.to_i

if brend[a].nil?
  puts 'Такого подарка нет!'
  abort
end

puts "Ваша машина - #{brend[a]}! Поздравляем!!!"
