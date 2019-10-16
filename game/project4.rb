require_relative '../game/project1/inputs'
require_relative './project1/check'
require_relative './project1/prints'

def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end


def quest_word_to_letter(word)
  @q_letter = (word.split('')).map{ |word|  word if word != ' '}
end

init_word
puts 'Введите загадываемое слово:'
input_quest_word(input_letter)
quest_word_to_letter(quest_word)
cls
loop do
  print_visilica(number_attempt)
  'Слово: ' + print_word_true.to_s
  puts
  puts 'Не угаданные буквы: ' + print_error_letter.uniq.inspect
  puts 'Все буквы: ' + print_all_letter.uniq.inspect
  puts "Введите букву, у вас осталось #{number_attempt}:"
  break if check_win? or end_attempt?
  binding.irb
  letter = input_letter

  check_input_letter(letter)
  cls
end

if check_win?
  puts 'Поздравляем, вы выиграли!'
else
  puts 'Вы проиграли'
end



