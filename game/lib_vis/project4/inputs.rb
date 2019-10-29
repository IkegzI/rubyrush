module Inputs
  def quest_word_to_letter(word)
    @q_letter = (word.split('')).map{ |word|  word if word != ' '}
  end

  def input_letter(let = nil)
    letter = let || STDIN.gets.chomp.downcase
    letter = 'е' if letter == 'ё'
    letter = 'и' if letter == 'й'
    letter
  end


  def input_all_letter(letter)
    @a_letter << letter
  end

  def input_quest_word(word)
    @quest_word = word
  end

  def input_quest_letter(letter)
    @q_letter << letter
  end

  def input_true_letter(letter)
    @t_letter << letter
  end

  def input_error_letter(letter)
    @e_letter << letter
  end
end