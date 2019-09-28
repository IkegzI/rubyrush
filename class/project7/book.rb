require_relative 'product'

class Book < Product
  #attr_accessor :autor, :publishing
  def initialize(params)
    super
    @product[:autor] = params[:autor]
    @product[:publishing] = params[:publishing]
  end

  def print_info
    puts "Книга " + super + " #{@product[:publishing]}, #{@product[:author]}, #{@product[:price]}. (осталось  #{@product[:amount]})"
  end

end