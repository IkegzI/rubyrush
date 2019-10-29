require_relative './project4/game'

game = Game.new
if game.print_quest_word == ''
  puts 'Введите загадываемое слово:'
  game.input_quest_word(game.input_letter)
end
game.quest_word_to_letter(game.quest_word)
game.cls
loop do
  game.print_visilica(game.number_attempt)
  'Слово: ' + game.print_word_true.to_s
  puts
  puts 'Не угаданные буквы: ' + game.print_error_letter.uniq.inspect
  puts 'Все буквы: ' + game.print_all_letter.uniq.inspect
  puts "Введите букву, у вас осталось #{game.number_attempt}:"
  break if game.check_win? or game.end_attempt?
  letter = game.input_letter
  game.check_input_letter(letter)
  game.cls
end

if game.check_win?
  puts 'Поздравляем, вы выиграли!'
else
  puts 'Вы проиграли'
end



