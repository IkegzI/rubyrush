tickets = {
    place_1: {
        name: 'Иванов А.В.',
        pass: '12 34 432123',
        pt: 'Москва - Владивосток',
        ticket: '43252365656565235'
    },
    place_2: {
        name: 'Иванов А.В.',
        pass: '12 34 432123',
        pt: 'Москва - Владивосток',
        ticket: '4325231756756752515235'
    },
    place_3: {
        name: 'Иванов А.В.',
        pass: '12 34 432123',
        pt: 'Москва - Владивосток',
        ticket: '43252312566666635'
    }
}

tickets.each do |key,item|
  puts
  puts "*  *  *  #{key}  *  *  *"
  puts "Маршрут: #{item[:pt]}"
  puts "Билет № #{item[:ticket]}"
  puts "ФИО пассажира: #{item[:name]}"
  puts "Паспорт : #{item[:pass]}"
end
puts