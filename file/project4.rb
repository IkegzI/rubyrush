require_relative './project4/output'
require_relative './project4/letter'
require_relative './project4/slovo'
require_relative './project4/check'

Output.cls
puts 'Как будем играть?(1 - загадывает пк, Enter - Загадывает пользователь)'
game_opt = STDIN.gets.to_i
Output.cls
puts "Введите слово для игры:"
word = Slovo.new(game_opt != 1 ? STDIN.gets.chomp : (File.readlines("#{File.dirname(__FILE__)}/project4/word_rus.txt")).sample.chomp)
letter = Letter.new(word.quess_letter)
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
  puts "Загаданное слово: #{word.quess_word}"
end



