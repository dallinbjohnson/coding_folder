@arr = [*1..50]
@computer = @arr.sample
var = 0

def numbers
	puts "\n"
	print "Enter a number between 1 - 50: "
	@user = gets.chomp.strip.to_i
end

numbers

until var == 1
	if @user == @computer
		puts "That is the correct number!"
		puts "Computer: #{@computer} User: #{@user}"
		puts "\n"

		var = 1
	elsif @user > @computer
		puts "To High"
		puts "Guess again"

		numbers
	elsif @user < @computer
		puts "To Low"
		puts "Guess again"
		numbers
	else
		puts "Error"
		numbers
	end
end


