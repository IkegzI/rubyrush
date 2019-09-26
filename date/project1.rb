wday = Time.now.strftime("%A")

#Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

arr = ['Saturday', 'Sunday']
work_day = {
'Monday' 	=> 'Понедельник',
'Tuesday'	=> 'Вторник',
'Wednesday' => 'Среда',
'Thursday' => 'Четверг',
'Friday' => 'Пятница',
'Saturday' => 'Суббота',
'Sunday' => 'Воскресенье'
}

if arr.include?(wday)
	puts "Сегодня выходной, день недели #{work_day[wday]}"
else
	puts "#{work_day[wday]}, рабочий день, марш работать!"
end