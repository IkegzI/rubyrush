class Letter

attr_reader :letter_all, :letter_error, :letter_guess, :letter_slovo

def initialize(letter)
	@letter_slovo = letter
	@letter_all = []
	@letter_guess = []
	@letter_error = []
	@letter
end

def input_user_letter
	loop do
	puts 'Введите букву: '
	@letter = STDIN.gets.chomp.split('').first
	break unless @letter == ''
	end
	add_dictionary(@letter)
end



private

def add_dictionary(letter)
	@letter_all << letter unless letter.match(/[а-я]/).nil?
	@letter_all.each do |item|
	if @letter_slovo.include?(item)
		@letter_guess << item
		@letter_guess << controversial_letters(item)
	else
		@letter_error << item
		@letter_error << controversial_letters(item)
	end
	end
	letter_compact
end

def letter_compact
	@letter_error = @letter_error.uniq.compact
	@letter_guess = @letter_guess.uniq.compact
	@letter_all = @letter_all.uniq.compact	
end

def controversial_letters(letter)
	if	  letter == 'и'
			'й'
	elsif letter == 'й'
			'и'
	elsif letter == 'ё'
			'е'
	elsif letter == 'е'
			'ё'
	end
end

end