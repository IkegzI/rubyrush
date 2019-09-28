require_relative 'product'

class Book < Product
  #attr_accessor :autor, :publishing
  def initialize(params)
    super
    @product[:autor]      = params[:autor]
    @product[:publishing] = params[:publishing]
    @product[:genre]      = params[:genre]
    @product[:class_name] = 'book'
    file_create

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
    @file.close
  end

end