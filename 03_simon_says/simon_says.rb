def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, num = 2)
	array = []
	num.times do 
		array << x
	end

	array.join(' ')
end

def start_of_word(word, index)
	result = word[0...index]
end

def first_word(word)
	array = word.split(' ')
	array[0]
end

def titleize(x)
	lowercase = ['and', 'the', 'over']
	x.capitalize!.split(/\W/).each {|word| word.capitalize! unless lowercase.include?(word)}.join(' ')
end

