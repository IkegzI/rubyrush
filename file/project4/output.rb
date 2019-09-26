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
      begin
        output_vis = File.readlines("#{File.dirname(__FILE__)}/data/#{status+1}.txt")
        puts output_vis
      rescue Errno::ENOENT
        puts 'Изображение не найдено :-('
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