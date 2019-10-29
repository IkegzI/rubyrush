require_relative 'inputs'
require_relative 'check'
require_relative 'prints'

class Game
  include Prints
  include Inputs
  include Check

  def initialize(quest_word = '')
    @quest_word = quest_word
    @q_letter = []
    @t_letter = []
    @e_letter = []
    @a_letter = []
  end
end