def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(x)
	sum = 0
	x.each { |x| sum += x	 }
	sum
end

def multiply(*numbers)
	result = 1
	numbers.each {|num| result = result * num }
	result
end

def factorial(x)
	result = 1
	n = x
	if n != 0 && n != 1
		while n > 0
			result *= n
			n -= 1
		end
	else 
		n = 1
	end
	result
end

