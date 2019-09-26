class Chameleon
  def initialize
    @color = ''
  end

  def change_color
    a = rand (1..10)
    case a
      when 1..3
        'Красный'
      when 3..6
        'Синий'
      when 6..10
        'Жёлтый'
    end
  end



end
loop do
g = Chameleon.new
puts g.change_color
  gets
  end