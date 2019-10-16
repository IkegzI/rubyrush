class Parrent
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def obedient
    true
  end
end

class Child < Parrent

  def obedient
    false
  end
end

p = Parrent.new('Василий Палыч')
ch = Child.new('Вова')
puts p.obedient
puts ch.obedient