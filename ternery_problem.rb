puts "Enter 3 numbers"
n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
puts "n1 = #{n1}"
puts "n2 = #{n2}"
puts "n3 = #{n3}"

puts (n1 > n2 && n1 > n3)? "n1 is greater" : (n2 > n3)? "n2 is greater" : "n3 is greater"