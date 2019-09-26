puts "Загадано число от 0 до 16, отгадайте какое? У вас 3 попытки:"

item = rand(0...16)

3.downto(1) do

  answer = gets.to_i

  if item < answer
    puts 'Меньше'
  elsif item > answer
    puts 'Больше'
  elsif item == answer
    puts 'Вы угадали число'
    break
  else
    puts 'Вы програли!'
  end

end

puts "Число было загадано: #{item}"