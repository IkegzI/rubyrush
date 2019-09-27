class Myclass
attr_accessor :variable
def initialize (attr = nil)
	@variable = attr
end

def check_variable
	puts defined?(@variable)
	puts defined?(variable)
end

end

variable = ''
a = Myclass.new

puts a.check_variable
puts "Переменная '@variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"