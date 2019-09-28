require_relative './project7/product'
require_relative './project7/movie'
require_relative './project7/book'
a = Movie.new(title: 'Леон', price: 100, amount:  2)
b = Book.new(title: 'Готовка для чайников', price: 300, amount: 4)

puts "Фильм: #{a.product[:title]}. Цена: #{a.product[:price]}"
puts "Книга: #{b.product[:title]}. Цена: #{b.product[:price]}"
