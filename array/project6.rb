def input_n
  STDIN.gets.to_i
end

def arr_create (n)
  arr = []
  n = n || n
  n.times { |i| arr << i + 1 }
  arr
end

def cut_array(arr, n)
  arr.first(n)
end
puts "Введите размер колбасы: "
arr = arr_create(input_n)

puts "Сколько вам отрезать? "
n = input_n
puts (cut_array arr, n).inspect