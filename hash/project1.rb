ticket = {	name: 'Иванов А.В.',
			pass: '12 34 432123',
			pt: 'Москва - Владивосток',
			ticket: '43252312515235'
}


puts "Маршрут: #{ticket[:pt]}"
puts "Билет № #{ticket[:ticket]}"
puts "ФИО пассажира: #{ticket[:name]}"
puts "Паспорт : #{ticket[:pass]}"