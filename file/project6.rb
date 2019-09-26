holliday = File.readlines("#{File.dirname(__FILE__)}/project6/holliday.txt").map { |item| item.chomp }


day = Time.now
w_today = day.wday
case w_today
  when 1
    w_today = 'Понедельник'
  when 2
    w_today = 'Вторник'
  when 3
    w_today = 'Среда'
  when 4
    w_today = 'Четверг'
  when 5
    w_today = 'Пятница'
  when 6
    w_today = 'Суббота'
  when 7
    w_today = 'Воскресенье'
end

today = day.strftime('%d.%m')

puts "Сегодня #{today}.#{day.year}, #{w_today}"
if holliday.include?(today)
  puts 'Праздник! Гуляем! Тыц-Тыц-Тытытытыц..'
elsif day.sunday? or day.saturday?
  puts 'Выходной, расслабься...'
else
  puts 'Марш на работу, бревно!'
end