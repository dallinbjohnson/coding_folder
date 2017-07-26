require 'pry'

# Ask the user for a number 1 to 25.  Then ask them for add or multiply.
# Add or multiply all the numbers from one up to the number.
def math_method
	puts "\n"
	print "Would you like to add or multiply all the number up to your number (+ or *)? "
	@math = gets.chomp.strip

	if @math != "+" && @math != "*"
		puts "\n"
		puts "wrong math input."
		math_method()
	end
end

def get_number	
	puts "\n"
	print "Pick a number between 1 to 25: "
	@number = gets.chomp.strip.to_i

	if @number < 1 || @number > 25
		get_number
	end
end

def main_method
	puts "All the numbers from one to your number will be added or multiplied all together."

	get_number()

	math_method()

	arr = (1..@number).to_a

	if @math == "+"
		answer = arr.inject(&:+)

		if @number == 1
			answer += 1
		end

		puts "\n"
		puts "All the numbers added up is equal to: #{answer}"
	elsif @math == "*"
		answer = arr.inject(&:*)

		puts "\n"
		puts "All the numbers multiplied up is equal to: #{answer}"
	else
		puts "\n"
		puts "wrong input."
	end
end

main_method()


