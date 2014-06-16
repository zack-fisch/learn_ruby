class Temperature

	def initialize(hash)
		@hash = hash
	end

	def to_fahrenheit
		@hash.each do |temp, value|
			if temp == :f
				return value
			else
				return (9.0 / 5) * value + 32
			end
		end
	end

	def to_celsius
		@hash.each do |temp, value|
			if temp == :c
				return value				
			else
				return (5.0 / 9) * (value - 32)
			end
		end
		return nil
	end

	def self.in_celsius(temp)
		Temperature.new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

end

class Celsius < Temperature
	def initialize(temp)
		@hash = {:c => temp}
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@hash = {:f => temp}
	end
end

x = Fahrenheit.new(20)
x



