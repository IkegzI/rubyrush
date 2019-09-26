
def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end
cls
puts "Вас приветствует простенький калькулятор!"
puts
print "Введите первое число: "
a = STDIN.gets.to_i
print "Введите второе число: "
b = STDIN.gets.to_i
action = '*', '/', '+', '-'
puts
app = ''
loop do
print "Выбирете действие - #{action.map{|item| item }.to_s.delete('[').delete(']')}  : "
app = STDIN.gets.chomp
break if action.include?(app)
end
case app
	when '*'
		res = a * b
	when '/'
		res = a / b
	when '+'
		res = a + b
	when '-'
		res = a - b
end

puts "Результат: #{res}"