# Computer guessing game where cpu tells you a number is higher or lower from 1 - 25.

require 'pry'

def prompt(default, text)
  if default == ""
  	print(text + ' ')
  else
  	print(text + ' [' + default + '] ')
  end
  result = gets.chomp.strip
  prompt(default, text) if result == "" && default == ""
  return result.empty? ? default : result
end

def number
	print "Give a number between 1 - 25 that a computer can guess: "
	@user = gets.chomp.strip.to_i

	@number = [*1..25]
	@counter = 0

	computer_guess()
end



def computer_guess
	@computer = @number.sample

	@counter += 1
	high_low()
end

def high_low
	if @computer > @user
		puts "\n"
		puts "Computer: #{@computer}"
		puts "To High"

		@number.delete_if {|x| x >= @computer }

		p @number

		computer_guess()
	elsif @computer < @user
		puts "\n"
		puts "Computer: #{@computer}"
		puts "To Low"

		@number.delete_if {|x| x <= @computer }

		p @number

		computer_guess()
	else
		puts "\n"
		puts "User: #{@user} Computer: #{@computer}, Computer Wins!"
		puts "The computer guessed #{@counter} times to get the right answer!!"
	end
end

def play_again
	puts "\n"
	@answer = (prompt("y", "Would you like to play again (y or n)?"))
	puts "\n"

	if @answer.downcase == "y"
		return
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

until @answer == "n"
number()

play_again()
end
