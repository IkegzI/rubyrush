class Person
  @@cl = 0
  attr_reader :name, :age

  def initialize
    class_init
    @name
    @age
  end



  def input_data
    puts 'Введите имя: '
    @name = STDIN.gets.chomp
    puts 'Введите возраст'
    @age = STDIN.gets.to_i
  end


  def young?(age)
    age < 60 ? true : false
  end


  def class_init
    @@cl += 1
  end
  def self.class_print
    @@cl
  end

end
a = []
3.times do |i|
  a[i] = Person.new
  a[i].input_data
end

puts "Мы ввели #{Person.class_print} чел."
a.each_with_index { |item,index| puts " Имя - #{a[index].name}\n Возраст: #{a[index].age}. #{a[index].young?(a[index].age) ? 'Молодой.' : 'Пожилой.'}" }
