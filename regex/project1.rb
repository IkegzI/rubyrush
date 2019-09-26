regex =/[a-z\d]+@[a-z\d\.]+\.[a-z\d]+$/

email = STDIN.gets.chomp

puts email =~ regex
if email =~ regex
  puts 'Ввели email'
else
  puts 'Ввели фигню'
end
