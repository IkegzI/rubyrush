require_relative 'product'

class Movie < Product

  def initialize(params)
    super
    @product[:producer] = params[:producer]
    @product[:class_name] = 'movie'
  end

  def self.from_file(file_path)
    begin
      file = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }
      self.new(
          title: file[0],
          producer: file[1],
          year: file[2],
          price: file[3],
          amount: file[4]
      )
    rescue NotImplementedError
      puts 'Нет данных для загрузки'
    end
  end

  def print_info
      puts "Фильм " + super + " реж. #{@product[:producer]}, #{@product[:price]}. (осталось  #{@product[:amount]})"
  end

  def file_create
    super
    @file.puts(@product[:title])
    @file.puts(@product[:producer])
    @file.puts(@product[:year])
    @file.puts(@product[:price])
    @file.puts(@product[:amount])
    @file.close
  end

end

