module Prints

  def cls
    if Gem.win_platform?
      system('cls')
    else
      system('reset')
    end
  end

  def print_quest_word
    @quest_word
  end

  def print_quest_letter
    @q_letter
  end

  def print_true_letter
    @t_letter
  end

  def print_error_letter
    @e_letter
  end

  def print_all_letter
    @a_letter
  end

  def print_word_true
    print 'Слово: '
    @q_letter.each do |item|
      if @t_letter.include?(item)
        print ' ' + item + ' '
      else
        print " * "
      end
    end
  end

  def error_letter
    @e_letter
  end

  def quest_word
    @quest_word
  end

  def number_attempt
    7 - print_error_letter.uniq.size
  end

  def print_visilica(n)
    case n
    when 7
      puts
      puts
      puts
      puts
      puts
      puts
      puts
      puts
      puts
      puts '======================'
    when 6
      puts
      puts
      puts
      puts
      puts ''
      puts '______________________'
      puts '||                  ||'
      puts '||                  ||'
      puts '======================'
    when 5
      puts
      puts
      puts
      puts
      puts
      puts '             __       '
      puts '_____________||_______'
      puts '||                  ||'
      puts '||                  ||'
      puts '======================'
    when 4
      puts
      puts
      puts '     '
      puts '    //                '
      puts '    ||                '
      puts '    ||       __       '
      puts '____||_______||_______'
      puts '||                  ||'
      puts '||                  ||'
      puts '======================'
    when 3
      puts
      puts
      puts '     ============='
      puts '    //                '
      puts '    ||                '
      puts '    ||       __       '
      puts '____||_______||_______'
      puts '||                  ||'
      puts '||                  ||'
      puts '======================'
    when 2
      puts
      puts
      puts '     =============\   '
      puts '    //                '
      puts '    ||                '
      puts '    ||       __       '
      puts '____||_______||_______'
      puts '||       /-/        ||'
      puts '||      /-/         ||'
      puts '======================'
    when 1
      puts
      puts
      puts '     ========||===\   '
      puts '    //        |       '
      puts '    ||        |       '
      puts '    ||       __       '
      puts '____||_______||_______'
      puts '||       /-/        ||'
      puts '||      /-/         ||'
      puts '======================'
    when 0
      puts
      puts
      puts '     ========||===\   '
      puts '    //        |       '
      puts '    ||        O       '
      puts '    ||       __       '
      puts '____||_______||_______'
      puts '||       /-/        ||'
      puts '||      /-/         ||'
      puts '======================'
    end
    return n
  end
end
