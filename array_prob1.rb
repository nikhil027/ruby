puts "Enter the array elements"
numbers = Array.new(20)

numbers.each_with_index do |n,i|
	numbers[i] = gets.chomp.to_i
end

puts numbers.to_s

positive = 0
negative = 0
even = 0
odd = 0

numbers.each do |n|
	if n < 0
		negative += 1
	elsif 
		positive += 1
	end
	if n % 2 == 0
		even += 1
	elsif 
		odd += 1

	end
end

puts "There are #{positive} positive numbers"
puts "There are #{negative} negative numbers"
puts "There are #{even} even numbers"
puts "There are #{odd} odd numbers"