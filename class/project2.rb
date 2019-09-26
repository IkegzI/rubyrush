
class Person

  def initialize (f_name = '', m_name = '')
    @f_name = f_name
    @m_name = m_name
  end

  def input_name
    puts "ВВведите имя: "
    @f_name = STDIN.gets.chomp
    puts "ВВведите фамилию: "
    @m_name = STDIN.gets.chomp
  end

  def full_name
    puts "#{@f_name} #{@m_name}"
  end

end

a = []
3.times do |i|
  a[i] = Person.new(i.to_s,i.to_s)
  # a[i].input_name
end


a.each {|item| puts item.full_name}