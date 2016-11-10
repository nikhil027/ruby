input_string = "badger badger badger badger mushroom mushroom snake badger badger badger"
input_string = input_string.split(" ")
words = input_string.uniq
puts words.to_s
words_hash = {}
words.each do |word|
	words_hash[word] = input_string.find_all {|n| n == word}.count
end

words_hash.each do |word, count|
	puts "#{word} : #{"*" * count}"
end

=begin
words.each do |word|
	words_hash[word] = 0
end
words_hash.each do |word, count|
	input_string.each do |str|
		if word == str
			count += 1
		end
	end
	words_hash[word] = count
end
words_hash.each do |word, count|
	puts "#{word} : " + "*" * count
 end
=end