def stars(n)
  n.times {|i| print '*'}
  puts
end

def input_n
  STDIN.gets.to_i
end

puts 'Введите количество звёзд: '
n = input_n
puts 'Получите ваши звёзды:'
stars(n)
