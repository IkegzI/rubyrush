class Product
  attr_reader :product
  def initialize(params)
    @product = {}
    @product[:price] = params[:price]
    @product[:amount] = params[:amount]
    @product[:title] =  params[:title]
  end
end