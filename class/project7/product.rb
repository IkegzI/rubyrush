class Product
  attr_accessor :price, :amount, :title, :year
  def initialize(params)
    @price  = params[:price]
    @amount = params[:amount]
    @title  = params[:title]
    @year   = params[:year]
  end

  def print_info
    "\'#{@title}\', #{@year}"
  end

end