
class Question

  attr_reader :quest

  def initialize
    @quest = File.readlines("#{File.dirname(__FILE__)}/quest.txt")
  end


end