def variable
	a = 11
end

b = '2'
$C = [1, '2']
ARN = ''
puts "Переменная a - #{defined?(a)}"
puts "Переменная b - #{defined?(b)}"
puts "Переменная $C - #{defined?($C)}"
puts "Переменная ARN - #{defined?(ARN)}"