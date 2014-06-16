class Book

	def title=(title)
		@title = title
	end

	def title
		arr = @title.split
		lowercase = ["a", "an", "and", "in", "the", "of"]
		arr[0].capitalize!
		arr.each {|word| word.capitalize! unless lowercase.include?(word)}.join(' ')
	end

end
