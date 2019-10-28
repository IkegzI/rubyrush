require_relative './project2/gemfile.rb'
def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end
cls
what_find = {}
what_find = {
    1 => 'type',
    2 => 'date_create',
    3 => 'date_end',
    4 => 'id'
}


a = Post.new
a.print_data
select = {}
print "Что делаем (1 - Запись, 2 - поиск)?"
select['work'] = STDIN.gets.to_i
if select['work'] == 2
  print "Ищем по какому полю?(1 - Тип, 2 - Дата создания, 3 - Дата выполнения, 4 - ID)"
  select['what_find'] = what_find[STDIN.gets.to_i]
  print 'Введите значени поля: '
  select['data_find'] = STDIN.gets.chomp
  p select
  a.print_data(select['what_find'] => select['data_find'])

elsif select['work'] == 1

 Post.start_data.each {|key,value| puts "#{key} - #{value.first}"}
# # puts "Выберете нужный раздел и нажмите  Enter :"
 type_select = STDIN.gets.to_i

# Как получить создать класс из строки
a = eval(("#{Post.start_data[type_select].last}").capitalize).new
#a = (Kernel.const_get ("#{type_write[4].last}").capitalize).new

#дата, когда, что, тип
a.input_data
a.save


end