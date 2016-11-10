def square_each_digit(number)
	digit_array = number.split("")
	squared_result = []
	digit_array.each do |digit|
		a = digit.to_i*digit.to_i 
		squared_result.push(a)
	end
	puts square_each_digit.join("")		
end

puts "Enter a number"
number = gets.chomp
puts "The number is #{number}"

#puts digit_array.to_s
square_each_digit(number)





