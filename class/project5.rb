require_relative './project5/output'
require_relative './project5/letter'
require_relative './project5/slovo'
require_relative './project5/check'

Output.cls
puts "Введите слово для игры:"
word = Slovo.new(STDIN.gets.chomp)
letter = Letter.new(word.quess_letter)
status = []
loop do
  Output.cls
  puts Output.progress(Output.status_attempts(letter.letter_error))
  puts
  Output.print_guess(word.quess_letter, letter.letter_guess)
  puts
  print  'Неправильные буквы: '
  Output.print_letter (letter.letter_error)
  puts

  puts Output.status_attempts(letter.letter_error)
  break if Check.winner?(word.quess_letter, letter.letter_guess)
  break if Output.status_attempts(letter.letter_error) <= 0
  letter.input_user_letter
end

if Check.winner?(word.quess_letter, letter.letter_guess)
  puts "Вы победили"
else
  puts "Вы проиграли..."
end



