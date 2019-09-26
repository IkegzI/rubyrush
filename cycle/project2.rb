print "Введите размерность массива: "
n = gets.to_i
i = 1
arr = []
while i <= n do
  arr << rand(0...100)
  i += 1
end
print arr
puts
puts arr.max
