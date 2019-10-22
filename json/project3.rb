require 'json'

file = File.read("#{File.dirname(__FILE__)}/project3/project3.json", encoding: 'UTF-8')
data_json = JSON.parse(file)

data_json.each_with_index do |item,index |
  puts "#{index+1}) #{item[0]}.   \tПервооткрыватель #{item[1]}"
end

