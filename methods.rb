#method definition
#1
def add
	puts 10 + 20 # return value is nil 
end

#method invocation
puts add

#2
# here add_numbers is a method and n1,n2 are the parameters 
def add_numbers(n1,n2)
	puts n1 + n2
end

add_numbers(10,20) # here 10,20 are the arguments

#3
def full_name(fn,mn,ln)
	puts fn + " " + mn + " " + ln
end

first_name = "Tejas"
middle_name = "Gowda"
last_name = "KI"

full_name(first_name,middle_name,last_name)

#4
def multiply
	10 * 5
	#in ruby using return keyword is optional because the last statement executed will be the return value

	puts "we are in the method multiply"

	return 5 * 5 # When return keyword is explicitly used we come out of the program and any statenemt below it wil not be executed

	puts "Ba bye"
end

 puts multiply

 #5
add_numbers("Tejas"," Gowda")

add_numbers("10")