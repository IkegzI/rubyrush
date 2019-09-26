file = {}
file = File.open("#{File.dirname('__FILE__')}/gems/project3/task.txt", 'a+')


def input_task(file)
  puts 'Создать свою задачу:'
  puts ''
  puts 'Название задачи'
  file.syswrite(STDIN.gets.chomp + '|')
  puts 'Описание задачи'
  file.syswrite(STDIN.gets.chomp + '|')

  file.syswrite(Time.now().strftime("%Y-%m-%d") + '|')
  file.syswrite(Time.now().strftime("%H:%M") + "\n")
end

def print_task(file)
  File.readlines(file).each do |item|
    puts
    item = item.split('|')
    puts "Имя задачи :\n #{item[0]}"
    puts "Описание :\n #{item[1]}\n"
    print "#{item[3].chomp} #{item[2]}\n"
  end
end

loop do
  print_task(file)
  puts
  puts 'Ввести новую задачу? (y/n)'
  input = STDIN.gets.chomp
  if input == 'y'
    input_task(file)
  elsif input == 'n'
    break
  end

end

file.close



