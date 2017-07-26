# Computer guessing game where cpu tells you a number is higher or lower from 1 - 25.

print "Give a number between 1 - 25 that a computer can guess: "
@user = gets.chomp.strip.to_i

@number = [*1..25]

@counter = -1

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
		puts "User: #{@user} Computer: #{@computer}"
		puts "The computer guessed #{@counter} times to get the right answer!!"
	end
end


computer_guess()

