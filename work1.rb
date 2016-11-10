given = "9740411566 00:18:23\n9740411566 00:04:12\n9740411771 00:54:00"

contacts = given.split("\n")

contacts.each_with_index do |key, index|
	contacts[index] = key.split(" ")
end
 puts contacts.to_s

result = contacts.inject({}) do |key, value|
	if key[value.first].nil?
		key[value.first] = [value.last]
	else
		key[value.first].push(value.last)
	end
	key
end

puts result.to_s