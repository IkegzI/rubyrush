  file = {}
  file = File.open("#{File.dirname('__FILE__')}/gems/project3/task.txt", 'a+')
  f_lines = file.readlines.to_h
  size_file  = file.readlines.size

  def print_task(d)
  d.each do |key, value|
    print key, value
    puts
  end
end

def input_task(size)

  task = {}
  task[size+1] = {}
  puts 'Создать свою задачу:'
  puts ''
  puts 'Название задачи'
  task[size+1]['name'] = STDIN.gets.chomp
  puts 'Описание задачи'
  task[size+1]['text'] = STDIN.gets.chomp

  task[size+1]['date'] = Time.now().strftime("%Y-%m-%d")
  task[size+1]['time'] = Time.now().strftime("%H:%M")
  task
end



# f_lines.each do |key, value|
#   # print "#{key}. #{value[:name]}\n"
#   # puts "#{value[:text]}"
#   # print "#{value[:time]} #{value[:date]}"
#   puts key
# end

  puts 'Ввести новую задачу? (y/n)'
if STDIN.gets.chomp == 'y'
  file.syswrite("#{input_task(size_file)}\n")
end

  file.close



