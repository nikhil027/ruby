=begin
A record contains name of cricketer, his age, number of test matches that he has played and the average runs that he has scored in each test match. Create an array of objects to hold records of 20 such cricketers and then write a program to read these records and arrange them in ascending order by average runs. Use sort stand library method
=end

require 'faker'

class Cricket

	attr_accessor :name, :age, :matches, :average

	@@players = []

	def initialize(name, age, matches, average)
		@name = name
		@age = age
		@matches = matches
		@average = average
	end

	def add_to_list
		@@players.push(self)
	end

	def details
		"#{self.name} - #{self.age} - #{self.matches} - #{self.average}"
	end

	def self.get_sorted_player_details
		@@players.sort_by {|player| player.average}
	end

end

20.times do 
	name = Faker::Name.first_name
	age = Faker::Number.between(20,35)
	matches = Faker::Number.number(2)
	average = Faker::Number.between(25,45)
	player = Cricket.new(name, age, matches, average)
	player.add_to_list
end

player_details = Cricket.get_sorted_player_details

player_details.each do |player|
	puts player.details
end