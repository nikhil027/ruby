#get number
#square number
#raise the squared number
=begin
	2
	4
	64
=end

#method no argument and no return value
def greeting
	puts "*" * 50
	puts "method program"
	puts "*" * 50
end

def squared(n)
	n * n
end

def powered(n,pow)
	product = 1
	pow.times do
		product *= n
	end
	product #return is optional
end



greeting
puts "Enter the number"
number = gets.to_i
squared_number = squared(number)
puts "Square of the number #{number} is #{squared_number}"
puts "Enter the power to be raised "
power = gets.to_i
powered_number = powered(squared_number,power)
puts "Powered number is #{powered_number}"