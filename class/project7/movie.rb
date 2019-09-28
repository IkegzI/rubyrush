require_relative 'product'

class Movie < Product
  #attr_accessor :producer

  def initialize(params)
    super
    @product[:producer] = params[:producer]
  end

  def print_info
    puts "Фильм " + super + "реж. #{@product[:producer]}, #{@product[:price]}. (осталось  #{@product[:amount]})"
  end


end

