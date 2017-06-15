# The computer has chosen a number between 1 and 25 enter your guess and the computer will tell you higher or lower until you guess it!

def random_number
	puts "The computer randomly choses a number between 1-25. It's your goal to guess the right number!"

	computer_numb = rand(1..25)
	user = 0

	until user == computer_numb
		puts "\n"
		print "Pick a number between 1-25: "
		user = gets.chomp.strip.to_i

		if user == computer_numb
			puts "\n"
			puts "User: #{user} Computer: #{computer_numb}"
			puts "You picked the right number! You win!!"
		elsif user > computer_numb
			puts "You're too high."
		else
			puts "You're too low."
		end
	end
end

def play_again
	puts "\n"
	print "Would you like to play again (y or n)? "
	@answer = gets.chomp.strip
	puts "\n"

	if @answer.downcase == "y"
		random_number()
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

random_number()

until @answer == "n"
	play_again()
end

