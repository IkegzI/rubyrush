require_relative 'post.rb'


class Memo < Post

  def input_data
    puts 'Введите текст заметки: '
    super
  end

  def to_string
    super + @text
  end

end