require_relative 'product'

class Book < Product
  attr_accessor :autor, :publishing
  def initialize(params)
    super
    @autor = params[:autor]
    @publishing = params[:publishing]
  end

  def print_info
    puts "Книга " + super + " #{@publishing}, #{@author}, #{@price}. (осталось  #{@amount})"
  end

end