class Product
  #attr_accessor :price, :amount, :title, :year
  def initialize(params)
    @product = {}
    @product[:price]  = params[:price]
    @product[:amount] = params[:amount]
    @product[:title]  = params[:title]
    @product[:year]   = params[:year]
  end

  def print_info
    "\'#{@product[:title]}\', #{@product[:year]}"
  end

  def update(params)
    params.each_key { |key|  @product[key] = params[key]}
  end

end