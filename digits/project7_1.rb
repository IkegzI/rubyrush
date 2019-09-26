def input_answer
  STDIN.gets.to_i
end

def rand_number
  rand(0...16)
end

number = rand_number

def check_number(number, answer)
  if number < answer
    puts 'Меньше'
  elsif number > answer
    puts 'Больше'
  elsif number == answer
    puts 'Вы угадали число'
    return
  else
    puts 'Вы програли!'
  end
end

puts "Загадано число от 0 до 16, отгадайте какое? У вас 3 попытки:"

3.downto(1) do
  check_number(number, input_answer)
end

puts "Число было загадано: #{number}"