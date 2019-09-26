require 'translit'

puts "Gem translit"
a = Translit.convert("Мама мила раму")
b = Translit.convert(a)
puts a, b
puts


require 'cyrillizer'

puts "Gem cyrillizer"
a = "Отличный ёж".to_lat
b = a.to_cyr
puts a, b
puts

require 'translit_net'

puts "Gem translit_net"
puts 'Привет, как дела?'.translit({from: 'ru', to: 'en'})
puts 'Привет'.translit({from: 'ru', to: 'en'})
