wday = Time.now.wday

#Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

arr = ['6', '7']
work_day = {
1 	=> 'Понедельник',
2	=> 'Вторник',
3 => 'Среда',
4 => 'Четверг',
5 => 'Пятница',
6 => 'Суббота',
7 => 'Воскресенье'
}

if arr.include?(wday)
	puts "Сегодня выходной, день недели #{work_day[wday]}"
else
	puts "#{work_day[wday]}, рабочий день, марш работать!"
end