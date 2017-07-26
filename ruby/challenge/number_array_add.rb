# Have a user insert 10 numbers which are shoveled into an array.
# Add all the numbers in the array. Print out the answer in word form.

require 'to_words'

arr = []

puts "Enter in 10 random numbers."
puts "\n"

until arr.length == 10
	print "Enter a number: "
	number = gets.chomp.strip.to_i

	arr << number
end

answer = arr.inject(&:+)

answer = answer.to_words

puts "\n"
puts "All the numbers added up, is equal to #{answer}!"