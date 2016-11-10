class Student
	attr_accessor :name, :age
	@@count = 0

	def initialize(name, age)
		@name = name
		@age = age
		@@count += 1
	end

	def details
		"#{name} - #{age}"
	end

	def self.count
		@@count
	end
=begin
	def Student.count
		@@count
	end
=end
end

s1 = Student.new("Abhiram", 9)
s1 = Student.new("Radha", 9)
s1 = Student.new("Surabhi", 8)

puts "there are #{Student.count} students in the class"