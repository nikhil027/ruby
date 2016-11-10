# input 100110
# output 000111

str = "100110"

arr = str.split("")

# puts arr.sort.to_s
a1 = arr.first
arr.each do |a|
	if a1 <= a
		out_arr.push(a)
	else
		