require_relative 'product'

class Movie < Product

  def initialize(params)
    super
    @product[:producer] = params[:producer]
  end

  def print_info
    puts "Фильм " + super + "реж. #{@product[:producer]}, #{@product[:price]}. (осталось  #{@product[:amount]})"
  end


end

