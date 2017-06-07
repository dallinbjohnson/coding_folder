require 'prime'

def fizz_buzz

	print "What number do you want Fizz Buzz to go up to? "
	choice = gets.chomp.to_i

	1.upto(choice) { |number|
		if number % 15 == 0
			puts "FizzBuzz!"
		elsif number % 5 == 0
			puts "Buzz"
		elsif number % 3 == 0
			puts "Fizz"
		elsif number.prime?
			puts "Prime"
		else
			puts number
		end
	}
end
answer = "y"
until answer.downcase == "n"
	fizz_buzz

	print "Would you like to keep playing (y or n)? "
	answer = gets.chomp.strip
end