require 'rexml/document'

def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end
cls

def parse_file file
  data_file = REXML::Document.new(file)
  index = 0
  product = []
  data_file.root.each_element do |item|
    product[index] = item.attributes
    index += 1
  end
  product[index] = {'id' => 'x', 'type' => 'exit', 'text' => 'Покинуть магазин'}
  product
end

def puts_data product
  return "#{product["type"]} '#{product["name"]}', автор: #{product['author']} - #{product['price']} руб.  [остаток: #{product['residue']}]" if product['type'] == 'Книга'
  return "#{product["type"]} #{product['author']} - #{product["name"]}(#{product['genre']}) - #{product['price']} руб.  [остаток: #{product['residue']}]" if product['type'] == 'Аудио'
  return "#{product["type"]} '#{product["name"]}', автор: #{product['author']} - #{product['price']} руб.  [остаток: #{product['residue']}]" if product['type'] == 'Фильм'
  return "#{product['id']}: #{product['text']}" if product["type"] == 'exit'
end

def amount_cart_price cart
  amount = 0
  cart.each { |item| amount += item['price'].to_i }
  amount
end

def amount_cart_residues cart
  amount = 0
  cart.each { |item| amount += 1 }
  amount
end

cart = []
data = parse_file File.open("#{File.dirname(__FILE__)}/project3/products.xml")
loop do
  data.each_with_index do |item, index|
    unless item["type"] == 'exit'
      puts "#{index + 1}: #{puts_data item}"
    else
      puts puts_data item
    end
  end
  puts
  puts "Всего наименований в корзине #{amount_cart_residues cart || 0}, на сумму #{amount_cart_price cart || 0} руб."
  puts
  print 'Выбирите товар для покупки: '
  add_cart = STDIN.gets.chomp.downcase
  break if add_cart == 'x' or add_cart == 'х'
  cart << data[add_cart.to_i - 1] if add_cart.to_i > 0 and add_cart.to_i <= data.size
  cls
end
cls
puts "Товары в вашей корзине:"
cart.each {|item_cart| puts puts_data item_cart}
puts "На сумму: #{amount_cart_price cart}"
