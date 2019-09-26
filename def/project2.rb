require_relative './project2/paris'
require_relative './project2/london'
require_relative './project2/rome'
require_relative './project2/hello'

hello_traveller
a = [visit_london, visit_paris, visit_rome]
3.times do |i|
  loading_point
  puts "Приехали в #{a[i]}"
end