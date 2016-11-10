# variable number of arguments

def add(*args)  # here * represents variable number of arguments and args is a variable and args is a array
=begin
	sum = 0
	args.each do |n|
		sum += n
	end 
	return sum
=end	
	args.inject(:+)
end

puts add('tejas', 'gowda')
puts add(10,20,30)
puts add(10,20,30,40)


