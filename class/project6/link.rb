class Link < Post

  def initialize(text = nil, arg_2 = nil)
    @text = text
    @url = arg_2 || input_data
  end

  def input_data
    puts 'Введите описание: '
    super
    puts "Введите ссылку, которую нужно сохранить: "
    @url = STDIN.gets.chomp
  end

  def to_string
    super + @url
  end


end