require 'json'


file = File.read("#{File.dirname(__FILE__)}/project1/project1.json")
data_json = JSON.parse(file)

data_json['cart']['name'].each do |item|
  print item[1] + " "
end
puts
data_json['cart']['contacts'].each_with_index do |item, index|
  print "#{item[0]}: #{item[1]}"
  print ", " if index+1 != data_json['cart']['contacts'].size
end
puts
puts data_json['cart']['professions']['1']['name']
