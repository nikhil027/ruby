puts "Enter the string"
given_string = gets.chomp.downcase
puts "The entered sentance is \"#{given_string}\""

string_list = given_string.split("")

total_vowels = 0
vowels_list = []

string_list.each do |str|
	case str
		when 'a','e','i','o','u'
			total_vowels += 1
			vowels_list.push(str)
	end
end

puts "The total number of vowels in the string \"#{given_string}\" is #{total_vowels}"
puts "The vowels found were #{vowels_list.to_s}"
puts "The unique vowels are #{vowels_list.uniq.to_s}"