unless ARGV[0]
  print "Какая температура сейчас: "
  temp = STDIN.gets.to_i
else
  temp = ARGV[0].to_i
end

unless ARGV[1]
  puts "Какое время года?(0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  year = STDIN.gets.to_i
else
  year = ARGV[1].to_i
end

if year == 1 && (15..35).include?(temp)
  puts 'Скорее идите в парк, соловьи поют!'
elsif (22..30).include?(temp)
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end

