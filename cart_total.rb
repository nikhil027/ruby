cart = [10,20,30,40,50]
total = 0

cart.each do |price|
	puts "---> #{total}"
	puts "---> #{price}"
	total = total + price
	puts "**** #{total}"
end
puts "cart total is #{total}"

puts "Avg is  #{ total / cart.size} "

