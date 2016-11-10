 def spinwords(input_string)	
 	#input_string = "are u serious"
	split_array = input_string.split(" ")
	#letters_count = []
	split_array.each_with_index do |word,index|
		if word.length >= 5
			split_array[index].reverse
		end
	end
	
	puts split_array.join(" ")

end

puts "Enter a sentance"
input_string = gets.chomp
spinwords(input_string)	

