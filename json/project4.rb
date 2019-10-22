require 'json'

file = File.read("#{File.dirname(__FILE__)}/project4/project4.json", encoding: 'UTF-8')
data_json = JSON.parse(file)

# p data_json.find_all_values_for['name']

puts "Ищем (1 - Название, 2 - Номер, 3 - Обозначение в таблице)"

case STDIN.gets.to_i
when 1
  search = 'name'
  puts 'Введите имя эелемента:'
  search_data = STDIN.gets.chomp.downcase.capitalize
  level = 1
when 2
  search = 'number'
  puts 'Введите номер эелемента в таблице: '
  search_data = STDIN.gets.to_i
  level = 1
when 3
  search = "element"
  puts 'Введите обозначение эелемента в таблице: '
  search_data = STDIN.gets.chomp.downcase.capitalize
  level = 0
end


found_data = 0
data_json.each do |item|
  found_data = item if item[level][search] == search_data || item[level] == search_data || item[level]['latin'] == search_data
end
puts "Designation: #{found_data[0]}"
found_data[1].each do |key, value|
  puts "#{key}: #{value} "
end

