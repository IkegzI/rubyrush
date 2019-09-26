class Slovo

attr_reader :quess_letter, :quess_word

def initialize(word)
	@quess_word = word
	@quess_letter = (word.split('')).map{ |word|  word if word != ' '}
end

def status_attempts(letters_error)
	7 - letters.uniq.size
end

end

