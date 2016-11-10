# times
=begin
numbers = []
10.times do
	numbers.push(Random.rand(100))
end
puts numbers.to_s
=end
 
# each

cities = ["bangalore", "mysore", "tumkur", "mandya"]
cities.each do |city|
	puts city.capitalize
end

capitals = {
			"India" => "New Delhi",
			"Canada" => "Ottava",
			"Jamaica" => "Kingston"
 			}
capitals.each do |key, value|
	puts "Capitals of #{key} is #{value}"
end

capitals.keys.each do |key|
	puts "Capitals of #{key} is #{capitals[key]}"
end

capitals.values.each do |value|
	puts "Capitals of #{capitals.key value} is #{value}"
end