require 'json'

file = File.read("#{File.dirname(__FILE__)}/project2/lang_popular.json")
data_json = JSON.parse(file)
sort_array = (data_json.sort_by { |item| item[1].to_i }).reverse!
sort_array.each_with_index do |item, index|
  puts "Самый популярный язык: #{item[0]} (#{item[1]}) \n\n" if index == 0
  puts "#{item[0]}: #{item[1]}"
end

