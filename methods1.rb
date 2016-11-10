def add(n1,n2)
	n1 + n2
end
def sum(n1,n2)
	n1 - n2
end

cont = "y"
while cont == "y"
	puts "Select option"
	puts "1. Add\n2. Sub"
	option = gets.to_i
	puts "Enter n1"
	n1 = gets.to_i
	puts "Enter n2"
	n2 = gets.to_i
	case option
	when 1
		puts add(n1,n2)
	when 2
		puts sub(n1,n2)
	else 
		puts "invalid option"
	end
	puts "do you wish to continue (y/n)"
	cont = gets.chomp.downcase
end 
