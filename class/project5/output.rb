class Output

  class << self

    def cls
      if Gem.win_platform?
        system('cls')
      else
        system('reset')
      end
    end

    def progress(status)
      case status
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
    end

    def print_guess(letters_slovo, letters_guess)
      letters_slovo.each do |item|
        if letters_guess.include?(item)
          print " #{item} "
        else
          print " * "
        end
      end
    end

    def print_letter(letters)
      letters.each { |item| print "#{item} " }
    end

    def status_attempts(letters_error)
      7 - (Check.uniq_size_letter_error(letters_error) || 0)
    end


  end

end