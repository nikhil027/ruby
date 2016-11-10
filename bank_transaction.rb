=begin
Create a class to specify data of customers in a bank. The data to be stored is: Account Number, Name, Balance. Assume a maximum of 200 customers in the bank

1.Write amethod to print the account number and name of each customer with balance below INR 100
2.If a customer request for withdrawal or deposit, it is given in the form " Acc No, Amount, code (1 for deposit, 0 for withdrawal)
 Write a program to give a message, "The balance is insufficient for the specified withdrawal"

User Faker to populate Data
=end

require 'faker'

class Bank
	attr_accessor :account_number, :name, :balance

	@@accounts = []

	def initialize(account_number, name, balance)
		@account_number = account_number
		@name = name
		@balance = balance
	end

	def add_to_list
		@@accounts.push(self)
	end

	def self.all
		@@accounts

	def details
		"#{self.name} - #{self.account_number} - Rs #{self.balance}"
	end

	def self.get_details_by_balance
		@@accounts.find_all {|account| account.balance < 100}
	end

	def self.transaction_type_deposit(acc_num, amount)
		deposit = @@accounts.find {|account| account.account_number == acc_num}
		deposit.balance += amount
		puts "The new balance is #{deposit.balance + amount}"
	end

	def self.transaction_type_withdraw(acc_num, amount)
		withdraw = @@accounts.find {|account| account.account_number == acc_num}
		if withdraw.balance < amount
			puts "The balance is insufficient for the specified withdrawal"
		else
			withdraw.balance -= amount
			puts "The new balance is #{withdraw.balance - amount}"
		end
	end

end

200.times do 
	account_number = Faker::Number.number(5)
	name = Faker::Name.first_name
	balance = Faker::Number.between(0,1000)
	account_details = Bank.new(account_number, name, balance)
	account_details.add_to_list
end

puts "Details of the customers whose balance is less than Rs 100"
customer_details = Bank.get_details_by_balance
customer_details.each do |customer|
	puts customer.details
end

puts "Enter your account details for transaction"
puts "Enter your account number"
acc_num = gets.to_i
puts "Enter the amount"
transaction_amount = gets.to_i
transaction_account = Bank.get_account_details(acc_num, transaction_amount)
puts "#{transaction_account.details}"


puts "Enter the transaction type 1. Deposit 0. Withdraw"
transaction_type = gets.to_i



case transaction_type
	when 1
		puts transaction_type_deposit(acc_num, transaction_amount)
	when 0
		puts transaction_type_withdraw(acc_num, transaction_amount)
	else
		puts "Sorry try again"
	end
end