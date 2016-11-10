require 'faker'
class Player
	attr_accessor :name, :team, :strike_rate 

	@@players = [] # temp data storage

	def initialize(name, team, strike_rate)
		@name = name
		@team =team
		@strike_rate =strike_rate
	end

	def add_to_list
		@@players.push(self)  # self in statement refers the invoking objecti inside the class
	end

	def self.all   # self in method defnition defines a class method
		@@players
	end

	def details
		"#{self.name} - #{self.team} - #{self.strike_rate}"
	end

	def self.find_by_team(team_name)
		@@players.find_all {|player| player.team == team_name}
	end

	def self.find_by_strike_rate(sr)
		@@players.find_all {|player| player.strike_rate >= sr }
	end

	def self.find_by_strike_rate_range(min_sr,max_sr)
		@@players.find_all {|player| player.strike_rate >= min_sr && player.strike_rate <= max_sr}
	end

	def self.team_hash
		team_hash = {}
		@@players.each do |player|
			if team_hash[player.team].nil?
				team_hash[player.team] = [player.name]
			else
				team_hash[player.team].push(player.name)
			end
		end
		team_hash
	end
end

=begin
p1 = Player.new("Virat", "RCB", 154.76)
p1.add_to_list

p2 = Player.new("Rahul", "RCB", 130.32)
p2.add_to_list

players = Player.all
puts "Total players : #{players.size}"

puts players.to_s
players.each do |player|
	puts "* #{player.details}"
end
=end

50.times do
	name = Faker::Name.first_name
	team = ["RCB", "SRH", "KKR", "DD", "KT"].sample
	strike_rate = Faker::Number.between(50,250)
	player = Player.new(name,team,strike_rate)
	player.add_to_list
end

puts "all info"
info = Player.all
puts info

puts "Enter team name to find their players"
team_name = gets.upcase.chomp

team_players = Player.find_by_team(team_name)

team_players.each do |player|
	puts "* #{player.details}"
end

puts team_players.collect(&:name).to_s #if the arraay con tains several objects and if we want to retrive a sertain attributies of these objects we use .collect method

puts "Enter the strike rate"
strike_rate = gets.to_i

team_strike = Player.find_by_strike_rate(strike_rate)

team_strike.each do |player|
	puts "* #{player.details}"
end

puts "Enter min and max strike rate"

min_sr = gets.to_i
max_sr = gets.to_i

range_strike = Player.find_by_strike_rate_range(min_sr, max_sr)

range_strike.each do |player|
	puts "* #{player.details}"
end

teams_hash = Player.team_hash
puts teams_hash.to_s