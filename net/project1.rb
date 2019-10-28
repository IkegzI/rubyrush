require 'net/http'
require 'uri'
require 'rexml/document'

PRECIPITATION = {
    3 => 'смешанные',
    4 => 'дождь',
    5 => 'ливень',
    6 => 'снег',
    7 => 'снег',
    8 => 'гроза',
    9 => 'нет данных',
    10 => 'без осадков'
}
PHENOMENA = {
    -1 => 'туман',
    0 => 'ясно',
    1 => 'малооблачно',
    2 => 'облачно',
    3 => 'пасмурно'
}

TIME_OF_DAY = {
    0 => 'ночь',
    1 => 'ночь',
    2 => 'ночь',
    3 => 'ночь',
    4 => 'ночь',
    5 => 'ночь',
    6 => 'утро',
    7 => 'утро',
    8 => 'утро',
    9 => 'утро',
    10 => 'утро',
    11 => 'утро',
    12 => 'день',
    13 => 'день',
    14 => 'день',
    15 => 'день',
    16 => 'день',
    17 => 'день',
    18 => 'вечер',
    19 => 'вечер',
    20 => 'вечер',
    21 => 'вечер',
    22 => 'вечер',
    23 => 'вечер'
}

uri = URI.parse("https://xml.meteoservice.ru/export/gismeteo/point/163.xml")

response = Net::HTTP.get_response(uri)
doc = REXML::Document.new(response.body)
# file = File.read("#{File.dirname(__FILE__)}/project1/163.xml")
# doc = REXML::Document.new(file)

data = {}
# data[:city] = URI.unescape(doc.root.elements['REPORT/TOWN'].attributes['sname'])
#
data[:city] = URI.unescape(doc.root.elements['REPORT/TOWN'].attributes['sname'])

data[:forecast] = doc.root.elements['REPORT/TOWN']
index = 0
data[:forecast].each_element do |elem|
  index += 1

  data[:forecast] = elem

  data[:temp_min] = data[:forecast].elements['TEMPERATURE'].attributes['min']
  data[:temp_max] = data[:forecast].elements['TEMPERATURE'].attributes['max']
  data[:wind] = data[:forecast].elements['WIND'].attributes['max'].to_i
  data[:phenomena] = PHENOMENA[data[:forecast].elements['PHENOMENA'].attributes['cloudiness'].to_i]
  data[:precipitation] = PRECIPITATION[data[:forecast].elements['PHENOMENA'].attributes['precipitation'].to_i]
  data[:pressure] = data[:forecast].elements['PRESSURE'].attributes['max'].to_i
  data[:relwet] = data[:forecast].elements['RELWET'].attributes['max'].to_i
  data[:heat] = data[:forecast].elements['HEAT'].attributes['max'].to_i
  data[:time_day] = TIME_OF_DAY[data[:forecast].attributes['hour'].to_i]
  data[:day] = data[:forecast].attributes['day'] + '-' +
               data[:forecast].attributes['month'] + '-' +
               data[:forecast].attributes['year']

  puts "Прогноз на #{data[:time_day]}, #{data[:day]}, в городе #{data[:city]}:"
  puts "Температура от #{data[:temp_min]} до #{data[:temp_max]}, относительная влажность воздуха #{data[:relwet]}%"
  puts "Давление #{data[:pressure]} мм. ртутного столба"
  puts data[:phenomena] + ', ' + data[:precipitation]
  puts "Ощущается как #{data[:heat]}"
  puts ''

end
#
#
#
