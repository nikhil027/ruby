my_range = 1..100 # inclusive range [1 - 100]
my_range2 = 1...100 # exclusive range [1 -99]

puts my_range.to_a.to_s
puts my_range2.to_a.to_s

puts my_range.begin
puts my_range.first

puts my_range2.begin
puts my_range2.first

puts my_range.end
puts my_range2.end

puts my_range.include? 100
puts my_range2.include? 110


puts my_range2.include? 99
puts my_range2.include? 100	

alphabets = ('a'..'z').to_s
puts alphabets

#s = "2016-01-01"
#date.parse(s)