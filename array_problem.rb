array = [100,200,123,450,875,1]

minimum = array.first
maximum = array.first
sum = 0

array.each do |n|
	if n < minimum
		minimum = n
	end
	if n > maximum
		maximum = n
	end
	sum += n
end

average = sum / array.size

puts "The maximum number is #{maximum}"
puts "The minimum number is #{minimum}"
puts "The total sum is #{sum}"
puts "The average is #{average}"

puts " sum of the array is #{array.inject(:+)}"

puts array.find { |num| num > 350 }
puts array.find_all { |num| num > 350 }.to_s
puts array.find_all { |num| num > 1000 }.to_s