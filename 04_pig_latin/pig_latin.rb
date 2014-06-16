def translate(word)
	vowels = ['a', 'e', 'i', 'o', 'u'] 
	first_letter = word[0]
	second_letter = word[1]
	if vowels.include?(first_letter)
		word = word.concat("ay")

	elsif vowels.include?(first_letter) == false && vowels.include?(second_letter) == false
		word = word.concat(word[0])
		word = word.concat(word[1])
		word = word.concat("ay")
		word.slice!(0..1)

	else 
		word = word.concat(word[0])
		word = word.concat("ay")
		word.slice!(0)
	end
	word
end