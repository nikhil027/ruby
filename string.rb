puts "hello" + " world"

first_name = "ramesh"
last_name = "Suresh"
middle_name = "VEERESH"

puts first_name.capitalize #Ramesh
puts last_name.downcase #suresh
puts first_name.upcase #RAMESH
puts first_name.length #6
puts middle_name.reverse #HSEREEV
puts first_name.upcase! #RAMESH
puts first_name #RAMESH
names = "ramesh, veeresh, suresh".split(/,/) #

#string interpolation
puts "My name is #{first_name}. My Surname is #{last_name}"

#string concatenation
puts "My name is "  + first_name + ". My surname is " + last_name

#association proxy / daisy chaining
str = "evil"
puts str.reverse.upcase 
puts str.reverse.upcase.length
