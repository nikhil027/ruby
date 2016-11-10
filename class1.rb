# class is a set of attributes and methods that define an object.
# every attributes will have 2 methods - reader & writer / getter & setter
# reader - return the value of the attribute
# writer - set the value for the attribute  
class Restaurant
	# writer method for name attribute
	def name=(user_input)
		@name = user_input  # here @name is an instance variable
	end

	# reader method for name attribute
	def name
		@name
	end
=begin
	def reverse_name
		@name.reverse
	end
=end
	def location=(user_input)
		@location = user_input
	end

	def location
		@location
	end



end

r1 = Restaurant.new
r1.name = "MTR"  # writer method != r1.name("MTR")
puts r1.name  #reader method
#puts r1.reverse_name
r1.location = "JP nagar"
puts r1.location

r2 = Restaurant.new
r2.name = "Adigas"
puts r2.name
r2.location = "Jayanagar"
puts r2.location