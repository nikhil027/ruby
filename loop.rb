=begin

# loop
i = 1 
loop do
	if i <= 10
		puts i
	else
		break # loop control
	end
	i += 1
end
# initialization, condition, incrementation




# while loop
cont = "y"

while cont == "y"
	puts "Enter the numerator"
	num1 = gets.to_f
	puts "Enter the denominator"
	num2 = gets.to_f
	puts "Solution = #{(num1 / num2).round(2)}"
	puts "Do you wish to continue (y/n)"
	cont = gets.chomp.downcase
end
=end

cont = "y"

until cont == "n"
	puts "Enter the numerator"
	num1 = gets.to_f
	puts "Enter the denominator"
	num2 = gets.to_f
	if num2.zero?
		break
	else
		puts "Solution = #{(num1 / num2).round(2)}"
	end
	puts "Do you wish to continue (y/n)"
	cont = gets.chomp.downcase
end