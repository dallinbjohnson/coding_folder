# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], and print out each value.
# Same as above, but only print out values greater than 5.
# Now, using the same array from #2, use the select method to extract all the odd numbers into a new array.
# Then turn them into Dragons
# Store the dragons into a new variable and ask the user to guess how many dragons there is. Write a program informing if the user guessed to high or low till they guess right.
# Give Dan 20 bucks
# Give Elise nothing

require 'faker'
require 'pry'

arr = [*1..20]

# number 1
arr.each do |n|
	print n
end
puts "\n"

# number 2
new_arr = []
arr.each do |n|
	if n > 5 
		print n
		new_arr << n
	end
end
puts "\n"

# number 3
odd_arr = []
odd_arr << new_arr.select.each_with_index { |y, odd_number| odd_number.odd? }
odd_arr.flatten!

p odd_arr

# number 4
i = 0
until i == odd_arr.length do
	color = Faker::Color.color_name

	if odd_arr.include?("#{color} Dragon")
		color = Faker::Color.color_name
	end

	odd_arr.delete_at(0)
	odd_arr << "#{color} Dragon"

	i += 1
end

p odd_arr

# number 5
guess = 0
until guess == odd_arr.length
	puts "\n"
	print "How many Dragons are there? "
	guess = gets.chomp.strip.to_i

	if guess == odd_arr.length
		puts "\n"
		puts "User: #{guess} Dragons: #{odd_arr.length}"
		puts "You picked the right number! You win!!"
	elsif guess > odd_arr.length
		puts "You're too high."
	else
		puts "You're too low."
	end
end

# number 6
puts "\n"
puts "Dan here is 20 bucks!"
puts "Elise gets nothing."

# number 7 guess the color of dragon.
# guess = 0
# until guess == odd_arr.length
# 	puts "\n"
# 	print "How many Dragons are there? "
# 	guess = gets.chomp.strip.to_i

# 	if guess == odd_arr.length
# 		puts "\n"
# 		puts "User: #{guess} Dragons: #{odd_arr.length}"
# 		puts "You picked the right number! You win!!"
# 	elsif guess > odd_arr.length
# 		puts "You're too high."
# 	else
# 		puts "You're too low."
# 	end
# end