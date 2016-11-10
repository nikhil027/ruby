=begin
Write a menu driven program that depicts the working of a library. The menu options should be

1. Add book information
2. Display book information
3. List all books of given author
4. List the title of specified book
5. List the count of books in the library
6. Edit a book details
7. Mark a book as borrowed
8. List all the borrowed books
9. Exit program
=end

require 'faker'

class Library
	attr_accessor :title, :author, :book_number, :publisher, :genre, :borrowed

	@@books = []

	def initialize(title, author, book_number, publisher, genre, borrowed)
		@title = title
		@author = author
		@book_number = book_number
		@publisher = publisher
		@genre = genre
		@borrowed = borrowed
	end

	def add_to_list
		@@books.push(self)
	end

	def details
		"* #{self.title} - #{self.author} - #{self.book_number} - #{self.publisher} - #{self.genre} - Borrowed(#{self.borrowed})"
	end

	def self.books_information
		@@books
	end

	def self.get_books_by_author(author_name)
		@@books.find_all {|book| book.author == author_name}
	end

	def self.get_book_by_number(number)
		@@books.find {|book| book.book_number == number}
	end

	def self.get_books_borrowed
		@@books.find_all {|book| book.borrowed == "yes"}
	end

end

def add_book_information
	title = Faker::Book.title
	author = Faker::Book.author
	book_number = Faker::Number.number(2)
	publisher = Faker::Book.publisher
	genre = Faker::Book.genre
	borrowed = "no"
	book = Library.new(title, author, book_number, publisher, genre, borrowed)
	book.add_to_list
end

def display_book_information 
	books = Library.books_information
	books.each do |book|
		puts book.details
	end
end

def list_books_by_author
	puts "Enter author name"
	author_name = gets.chomp.capitalize
	books = Library.get_books_by_author(author_name)
	books.each do |book|
		puts book.details
	end
end

def edit_book_details
	puts "Enter the book number to be edited"
	number = gets.to_i
	book_info = Library.get_book_by_number
	puts "Enter book title"
	book_info.title = gets.chomp
	"Enter author name"
	book_info.author = gets.chomp
	puts "Enter the publisher"
	book_info.publisher = gets.chomp
	puts "Enter the genre"
	book_info.genre = gets.chomp
	puts "Information updated"
	puts book_info.details
end

def mark_book_as_borrowed
	puts "Enter the book number to be marked"
	number = gets.to_i
	book_info = Library.get_book_by_number
	book_info.borrowed = "yes"
end

def list_borrowed_books
	books = Library.get_books_borrowed
	books.each do |book|
		puts book.details
	end
end

puts "Enter the options number"
puts "	
1. Add book information
2. Display book information
3. List all books of given author
4. List the title of specified book
5. List the count of books in the library
6. Edit a book details
7. Mark a book as borrowed
8. List all the borrowed books
9. Exit program  "
option_number = gets.to_i

while option_number != 9

	case option_number
		when 1
			add_book_information
		when 2
			display_book_information
		when 3
			list_books_by_author
		when 4
			puts "not done yet"
		when 5
			puts "The total number of books are #{Library.books_information.count}"
		when 6
			edit_book_details
		when 7
			mark_book_as_borrowed
		when 8
			list_borrowed_books
		else 
			exit
	end
	puts "Enter the options number"
	option_number = gets.to_i
end
		