numbers = [10,20,30,40,50]

numbers.each do |n| # n is a block variable
	puts n
end
# puts n doesnot work as n is a block variable
=begin
	doesn't work as numbers is a local variable and is not available in the method

	def add
		numbers.inject(:+)
	end

	puts add
	
=end

def add(numbers)
	numbers.inject(:+)
end

puts add(numbers)

puts numbers.to_s