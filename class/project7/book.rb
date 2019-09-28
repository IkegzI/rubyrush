require_relative 'product'

class Book < Product
  #attr_accessor :autor, :publishing


  def self.from_file(file_path)
    super
    file = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }
    self.new(
        # @product = {}
        # param = [:title, :producer, :year, :price, :amount]
        # file.each_with_index { |item, index| @product[param[index]] = item }
        title: file[0],
        genre: file[1],
        autor: file[2],
        price: file[3],
        amount: file[4]
    )
  end




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