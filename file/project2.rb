eyes_file = "#{File.dirname(__FILE__)}/project2/eyes.txt"
foreheads_file = "#{File.dirname(__FILE__)}/project2/foreheads.txt"
mouth_file = "#{File.dirname(__FILE__)}/project2/mouths.txt"
noses_file = "#{File.dirname(__FILE__)}/project2/noses.txt"



if File.exist?(eyes_file)
eyes = File.readlines(eyes_file)
else
  puts "Файл вариантов глаз не найден"
  return
end
if File.exist?(foreheads_file)
foreheads = File.readlines(foreheads_file)
else
  puts "Файл вариантов верхней части лица не найден"
  return
end
if File.exist?(mouth_file)
mouth = File.readlines(mouth_file)
else
  puts "Файл вариантов носа не найден"
  return
end
if File.exist?(noses_file)
noses = File.readlines(noses_file)
else
  puts "Файл вариантов рта не найден"
  return
end

output_file = File.new("#{File.dirname('__FILE__')}/file/project2/output/face#{Time.now().strftime("%Y-%m-%d")}#{Time.now().strftime("%H-%M-%S")}.txt", 'a+')
output_file.syswrite(foreheads[rand(foreheads.size)])
output_file.syswrite(eyes[rand(eyes.size)])
output_file.syswrite(noses[rand(noses.size)])
output_file.syswrite(mouth[rand(mouth.size)])
output_file.close


