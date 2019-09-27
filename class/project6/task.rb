require_relative 'post.rb'

class Task < Post

  def initialize(text = nil, arg_2 = nil)
    @text = text
    @due_date = arg_2 || input_data
  end

  def input_data
    puts 'Введите описание задачи: '
    super
    print "Введите время и дату выполнения задачи(12:34 01-01-2019) :"
    @due_date = STDIN.gets.chomp
  end

  def to_string
    super + @text + "\nВыполнить до: #{@due_date}"
  end

end