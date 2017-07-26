# Write a method that returns the elements on odd positions in an array. Then do even, then do a given number.
# cars = %w(lamborghini ferrari-testarossa porsche nissan audi dodge-neon 3000-GT)

require 'pry'

cars = %w(lamborghini ferrari-testarossa porsche nissan audi dodge-neon 3000-GT)

def odd_method cars
	odd = cars.values_at(* cars.each_index.select {|i| i.odd?})

	return "Odd value cars: " + odd.join(', ')
end

def even_method cars
	even = cars.values_at(* cars.each_index.select {|i| i.even?})

	return "Even value cars: " + even.join(', ')
end

def chosen_method cars, num
	# binding.pry
	chosen = cars.values_at(* cars.each_index.select {|i| p ((i + 1) % num.to_i == 0)})

	return "Incramented position by #{num} value cars: " + chosen.join(', ')
end

def user_method cars
	print "Would you like the odd positioned cars or even (odd or even or number)? "
	user = gets.chomp.strip

	if user.downcase == "odd"
		puts "\n"
		puts odd_method(cars)
	elsif user.downcase == "even"
		puts "\n"
		puts even_method(cars)
	elsif Integer(user)
		puts "\n"
		puts chosen_method(cars, user)
	else
		user_method
	end
end

stop = "n"
until stop == "y"
	user_method(cars)

	puts "\n"
	print "Would you like to exit? (y or n) "
	stop = gets.chomp.strip
end
