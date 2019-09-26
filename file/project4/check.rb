
class Check

  class << self

    def game_over?(letter_error)
        7 <= uniq_size_letter_error(letter_error)
    end

    def winner? (quess_letter, letter_quess)
      quess_letter.uniq.size < letter_quess.uniq.compact.size + 1
    end

    def uniq_size_letter_error(letter_error)
      l_size = letter_error.uniq.size
      l_size -= 1 if letter_error.include?('и')
      l_size -= 1 if letter_error.include?('е')
	  l_size
    end

  end





end