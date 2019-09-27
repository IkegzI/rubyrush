require 'objspace'
puts
a = 42
puts "Число 42 занимает в памяти #{a.size} байт"
puts "Строка 'Алексей' занимает в памяти #{'Алексей'.bytesize} байт"


arr = []
50000.times {|i| arr << i}
puts "Массив занимает в памяти #{ObjectSpace.memsize_of(arr)} байт"
gets


GC.start

puts "После запуска сборщика:"
puts "Число 42 занимает в памяти #{a.size} байт"
puts "Строка 'Алексей' занимает в памяти #{'Алексей'.bytesize} байт"
puts "Массив занимает в памяти #{ObjectSpace.memsize_of(arr)} байт"

arr = []
#GC.start

puts "Массив занимает в памяти #{ObjectSpace.memsize_of(arr)} байт"