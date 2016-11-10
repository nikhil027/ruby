products = {"shoes" => 123, "books" => 99, "mobiles" => 56}

puts products.class

puts products.keys.to_s  # returns the keys 

puts products.values.to_s # returns the values 

puts products.length #

puts products.to_a.to_s # converts the hash into an array 

puts "Total stock of shoes is #{products["shoes"]}"

puts "There are 56 #{products.key(56)}"

products["laptops"] = 123

puts products

products.each do |key, value|
	puts "There are #{value} #{key}"
end