require_relative 'product'

class Book < Product
  #attr_accessor :autor, :publishing


  def self.from_file(file_path)
    #super
    file = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }
    print file
    self.new(
        title: file[0],
        genre: file[1],
        autor: file[2],
        price: file[3],
        amount: file[4],
        publishing: file[5],
        year: file[6]
    )
  end




  def initialize(params)
    super
    @product[:autor]      = params[:autor]
    @product[:publishing] = params[:publishing]
    @product[:genre]      = params[:genre]
    @product[:class_name] = 'book'
    #

  end

  def print_info

    puts "Книга " + super + " #{@product[:publishing]}, #{@product[:author]}, #{@product[:price]}. (осталось  #{@product[:amount]})"
  end

  def file_create
    super
    @file.puts(@product[:title])
    @file.puts(@product[:genre])
    @file.puts(@product[:autor])
    @file.puts(@product[:price])
    @file.puts(@product[:amount])
    @file.puts(@product[:publishing])
    @file.puts(@product[:year])
    @file.close
  end

end