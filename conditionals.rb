puts 'enter today\'s temperature'
temperature = gets.to_f
puts "using if-else condition"
puts "we recommend"
if temperature > 40
	puts "swimming"
elsif temperature > 30
	puts "tennis"
elsif temperature > 20
	puts "badminton"
elsif temperature > 0
	puts "chess"
else
	puts "sit by the fire"
end
	
	
	# using case
puts "\nusing case (short hand operator)"
puts "we recommend"
case 
	when temperature > 40
		puts "swimming"
	when temperature > 30
		puts "tennis"
	when temperature >0 then 
		puts "indoor activity"
	else
		puts "sit by the fire"
end
		