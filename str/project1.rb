word = STDIN.gets.chomp.delete(' ').delete(',').delete('!').delete('?').delete('-').delete('.').downcase
sum  = 0
word = word.split('')
    word.each_with_index do |item, index|
  sum += 1 if item == word[-index-1]
      break if index >= (word.size)/2
      print "#{index}, #{sum}, #{item}, #{word[-index-1]} "
      puts
    end
if sum >= word.size/2
  puts 'Палиндром'
else
  puts 'Слово обычное'
end
