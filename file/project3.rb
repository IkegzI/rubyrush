require_relative './project3/answer'
require_relative './project3/question'


question = Question.new
answer_true = Answer.new
answer_correct = 0
question.quest.each_with_index do |item, index|
  puts item
  print "Ваш ответ:"
  user_answer = STDIN.gets.chomp
  if (user_answer <=> (answer_true.answer[index].chomp)) == 0
    puts "Правильный ответ"
    answer_correct += 1
  else
    puts "Вы ответили неверно. Правильный ответ: #{answer_true.answer[index]}"
  end
end

puts
puts "У вас правильных ответов: #{answer_correct}"
