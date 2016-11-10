class Product
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def details
		"#{name} - #{price}"
	end
end

class Mobile < Product
	attr_accessor :model
	def initialize(name, price, model)
		super(name, price)
		@model = model
	end

	def details
		super + " - #{model}"
	end

	def model_upcase
		"#{model.upcase}"
	end
end


p2 = Mobile.new("iPhone", 70000, "7 plus")
puts p2.details