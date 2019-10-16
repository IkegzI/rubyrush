class Product
  attr_reader :product
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

  def file_create
    @file = File.new("#{File.dirname(__FILE__)}/data/#{@product[:class_name]}/#{@product[:title].scan(/[а-яa-z\d\s\-]/i).join}.txt", 'w+', encoding: 'UTF-8')
  end

  def self.from_file(file_path)
    # raise NotImplementedError
  end

end