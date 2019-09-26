class Answer

  attr_reader :answer

  def initialize
    @answer = File.readlines("#{File.dirname(__FILE__)}/answer.txt")
  end

end