given = "9740411566 00:18:23\n9740411566 00:04:12\n9740411771 00:54:00"

array = given.split("\n")

puts array.to_s
hash = {}

array.each do |element|  
	cur_element = element.split(" ")
	if hash[cur_element.first.nil?
		 hash[cur_element.first = [cur_element.last]
	else
		hash[cur_element.first.push(cur_element.last)
	end
end

puts hash