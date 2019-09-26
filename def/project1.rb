def square (r)
	puts Math::PI * r ** 2
end

print "Введите радиус 1-го круга: "
r = STDIN.gets.to_i
square(r)

print "Введите радиус 2-го круга: "
r = STDIN.gets.to_i
square(r)

