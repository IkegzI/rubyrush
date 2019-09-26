
def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end

def digit_type(digit)
	if digit.match(/[\.\,]/)
		digit.to_f
	else
		digit.to_i
	end
end

cls
puts "Вас приветствует простенький калькулятор!"
puts
print "Введите первое число: "
a = digit_type(STDIN.gets.chomp)
print "Введите второе число: "
b = digit_type(STDIN.gets.chomp)
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
		puts "Результат: #{a * b}"
	when '/'
		puts "Результат: #{a / b}"
	when '+'
		puts "Результат: #{a + b}"
	when '-'
		puts "Результат: #{a - b}"
end
