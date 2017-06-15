# You guys now take bets for a horse race.  Take bids from people and then give the pay out to the winner.
# Create four horses.  Accept bets to which will win.  randomly choose a horse to win and pay out to the winner.
@horses = ["seabiscet", "secretariat", "man of war", "big brown", "zeus", "poseidon"]
@horse_bets = {}
@horse_person = {}

def play_again
	print "Would you like to play again (y or n)? "
	@answer = gets.chomp.strip
	puts "\n"

	if @answer.downcase == "y"
		customers()
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

def bets
	print "How much would you like to bet on #{@horse_name}? "
	@bid = gets.chomp.strip.to_i
end

def horse
	puts "Horses:"
	puts @horses

	print "What horse would you like to bet on? "
	@horse_name = gets.chomp.strip.downcase

	@horses.delete(@horse_name)

	bets

	@horse_bets[@horse_name] = @bid
end

def customers
	@people = []
	
	print "How many people will be taking bets up to #{@horses.length}? "
	@person = gets.chomp.strip.to_i


	until @person == @people.length
		print "What is your name? "
		person_name = gets.chomp.strip

		horse()

		@horse_person[person_name] = @horse_name

		@people << person_name
	end
end

def won
	@horses = ["seabiscet", "secretariat", "man of war", "big brown", "zeus", "poseidon"]

	win = @horses.sample
	prize = @horse_bets.values.inject { |a, b| a + b }

	if @horse_person.values.include?(win)
		winner = @horse_person.key(win)

		puts "#{win} won the race! #{winner}, you are the winner of $#{prize}!!"
	elsif win != @horse_person.values.include?(win)
		puts "#{win} won the race! The house wins $#{prize}!"
	else
		puts "Error"
	end
end

customers()
won()

until @answer == "n"
	play_again()
end
