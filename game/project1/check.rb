def check_input_letter(letter)
  if @q_letter.include?(letter)
    input_true_letter(letter)
  else
    input_error_letter(letter)
  end
  input_all_letter(letter)
end

def check_win?
  if print_true_letter.uniq.size == print_quest_letter.uniq.size
    true
  else
    false
  end
end

def end_attempt?
  number_attempt == 0
end

