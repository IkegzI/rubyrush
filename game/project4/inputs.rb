def init_word
  @quest_word = ''
  @q_letter = []
  @t_letter = []
  @e_letter = []
  @a_letter = []
end

def input_letter
  letter = STDIN.gets.chomp.downcase
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