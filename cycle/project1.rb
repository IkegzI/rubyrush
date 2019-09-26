print 'Введите число, до которого будет считаться сумма числел: '
n = gets.to_i
summ = 0
i = 1
arr = []
while i <= n do
  summ += i
  arr << i
  i += 1
end
print arr
puts
puts "Сумма чисел: #{summ}"