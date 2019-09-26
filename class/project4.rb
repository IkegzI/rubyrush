class Person
  @@cl = 0

  attr_reader :bit, :tri, :del

  def initialize (bit = 0, tri = 0, del = 0)
    class_init
    @bit = bit
    @tri = tri
    @del = del
  end


  def up_body(muscul)
    case muscul
      when 1
        @bit += rand(1..4)
      when 2
        @tri += rand(1..4)
      when 3
        @del += rand(1..4)
    end

  end

  def print_info
    puts "Бицепс: #{@bit}"
    puts "Трицепс: #{@tri}"
    puts "Дельтовидка: #{@del}"
  end

  def class_init
    @@cl += 1
  end

  def self.class_print
    @@cl
  end

end


a = []
3.times { |i| a << Person.new(rand(1..10), rand(1..10), rand(1..10)) }

a.each_with_index do |item, index|
  puts "#{index+1}-й бодибилдер: "
  item.print_info
  puts
end

a.each { |i| i.up_body(rand(1..3)) }

a.each_with_index do |item, index|
  puts "#{index+1}-й бодибилдер: "
  item.print_info
  puts
end
