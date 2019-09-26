films = File.readlines("#{File.dirname(__FILE__)}/project5/films.txt").sample

films = films.split('*')
puts "Сегодня смотрим:"
puts films[0]
puts "Описание:"
puts films[1..films.size]
