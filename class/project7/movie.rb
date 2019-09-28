require_relative 'product'

class Movie < Product
  attr_accessor :producer

  def initialize(params)
    super
    @producer = params[:producer]
  end

  def print_info
    puts "Фильм " + super + "реж. #{@producer}, #{@price}. (осталось  #{@amount})"
  end


end

