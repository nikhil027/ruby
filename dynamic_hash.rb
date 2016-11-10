details = Hash.new
cont = "y"

while cont == "y"
	puts "Enter the Key "
	details[gets.downcase.chomp] = nil
	puts "Do you wish to continue (y/n)"
	cont = gets.downcase.chomp
end
puts details
details.keys.each do |key| 
	puts "Enter the value for the key \"#{key}\""
	details[key] = gets.downcase.chomp
end
puts details