require 'rexml/document'
require 'date'

def cls
  if Gem.win_platform?
    system('cls')
  else
    system('reset')
  end
end

cls

def xml_parse f
  d = []
  index = 0
  f.root.each_element do |elem|
    d[index] = {}
    elem.attributes.each do |attr|
      d[index][attr.first.to_sym] = attr.last
    end
    d[index][:text] = elem.text
    index += 1
  end
#  file.close
  d
end

def xml_print data
  sort_day = []
  sort_day[0] = []
  sort_day[1] = []
  data.each do |item|
    if Date.parse(item[:end_date]) < Date.today
      sort_day[0] << item
    else
      sort_day[1] << item
    end
  end
  sort_day.each_with_index do |arr, index|
    if index == 0
      puts 'Эти желания должны уже были сбыться к сегодняшнему дню'
    else
      puts 'А этим желаниям ещё предстоит сбыться'
      puts '-----------------------------------------------------'
    end
    arr.each do |item|
      p "Дата создания: " + item[:date]
      p "Что сделать? " + item[:name]
      p item[:text].delete("/\n")
      p "Дата исполнения: " + item[:end_date]
      puts '====================================================='
      puts
    end
  end
end

def xml_write files, path
  files[:new] = File.new(path, 'w:UTF-8')
  files[:xml].write(files[:new], 3)
  files[:new].close
end

def file_open path
  file_xml = REXML::Document.new(File.read(path))
  {xml: file_xml}
end

def add_element files, attr, text
  add_elem = files[:xml].root.add_element 'desire', {
      'name' => attr['name'],
      'end_date' => attr['end_date'],
      'date' => Date.today
  }
  add_elem.text = text
end

path = "#{File.dirname(__FILE__)}/project5/desires.xml"
files = file_open path
data = xml_parse files[:xml]
xml_print data

puts "Записать желание?(y/n)"
quest = STDIN.gets.chomp

if quest == 'y'
  add_attr = {}
  puts "Название желания: "
  add_attr['name'] = STDIN.gets.chomp
  puts "Дата выполнения: "
  add_attr['end_date'] = STDIN.gets.chomp
  puts "Опишите желание: "
  text = STDIN.gets.chomp
  begin
    add_attr['end_date'] = Date.parse(add_attr['end_date'])
  rescue ArgumentError => e
    p e.message
    add_attr['end_date'] = Date.today + 7
  end
  add_element files, add_attr, text
end

xml_write files, path




