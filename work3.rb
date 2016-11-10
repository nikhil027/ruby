bills = "9740411566 00:18:23\n9740411566 00:04:12\n9740411771 00:54:00"
calls = bills.split("\n")

output = {}
calls.each do |call|
	call_hash = call.split(" ")
	if output.has_key? call_hash.first
		output["#{call_hash.first}"].push(call_hash.last)
	else
		output["#{call_hash.first}"] = []
		output["#{call_hash.first}"].push(call_hash.last)
	end
end

puts output