# Rock, Pager, Scissors, Spock, and Lizard. - Scissors cuts Paper covers Rock crushes Lizard poisons Spock smashes Scissors decapitates Lizard eats Paper disproves Spock vaporizes Rock crushes Scissors.


hash = {
	"Rock" => ["Lizard", "Scissors"],
	"Paper" => ["Rock", "Spock"],
	"Scissors" => ["Paper", "Lizard"],
	"Spock" => ["Scissors", "Rock"],
	"Lizard" => ["Spock", "Paper"]
}

stop = "y"
until stop == "n"
	puts "We will be playing Rock, Paper, Scissors, Lizard, Spock!"

	print "Pick what you would like to be: "
	user = gets.chomp.strip.capitalize

	computer = hash.keys.sample

	compare = hash.values_at(user).flatten.include?(computer)

	puts "\n"
	puts "User: #{user} Computer: #{computer}"

	if user == computer
		puts "It's a Tie"
	elsif compare
		puts "User Wins!"
	else
	 puts "Computer Wins"
	end

	puts "\n"
	print "Would you like to play again(y/n)? "
	stop = gets.chomp.strip.downcase
	puts "\n"
end
		