class Array
	def sum
		self.inject(0) {|total, num| total  += num }
	end

	def square
		self.map {|num| num ** 2}
	end

	def square!
		self.map! {|each| each ** 2}
	end
end