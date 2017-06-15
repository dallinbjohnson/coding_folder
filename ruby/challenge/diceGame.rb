# holds the rolls and points for the user and computer
@userPoints = []
@computerPoints = []
@dragon = []
@dragon2 = "How many dice would you like to roll? "

puts "\n"
puts @dragon1 = "Each player rolls some dice, who ever rolls the highest wins that round."
puts "\n"

# asks if you would like to play again then exits, starts the game over, or prompts the question again
def play_again
	print "Would you like to play again (y or n)? "
	@answer = gets.chomp.strip
	puts "\n"

	if @answer.downcase == "y"
		@userPoints = []
		@computerPoints = []

		dic_game()
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

# asks the user if they would rather play with dragons instead of dice, then changes the word dice to 'Dragons' in the sentence that is being printed out.
def dragon0
	print "Would you like to play with Dragons instead of Dice (y or n)? "
	dragonA = gets.chomp.strip
	puts "\n"

	if dragonA.downcase == "y"
		@dragon << @dragon1
		@dragon << @dragon2

		@dragon.each do |s|
    	s.gsub!(/dice/i, "Dragons")
		end

		# @dragon1 << @dragon[0]
		# @dragon2 << @dragon[1]

		# @dragon2.gsub!(/dice/i, "Dragons")

	elsif dragonA.downcase == "n"
		@dragon2 = "How many dice would you like to roll? "
	else
		dragon0()
	end
end

# The main dice game
def dic_game
	until @answer == "n" do

		dragon0()
		
		print "How many rounds would you like to play? "
		@rounds = gets.chomp.to_i
		puts "\n"
		
		until @userPoints.length == @rounds || @computerPoints.length == @rounds do
			def roll
				print @dragon2
				dice = gets.chomp.to_i
			
				print "Would you like to roll (y or n)? "
				choice = gets.chomp.strip
				puts "\n"

				if choice.downcase == "y"
					user = rand(1..6) * dice
					comp = rand(1..6) * dice
				elsif choice.downcase == "n"
					puts "Game Ended"
					puts "\n"

					play_again()
				else
					dic_game()	
				end

				puts "User rolled: #{user} Computer rolled: #{comp}"

				if user == comp
					puts "Tie"
					puts "You need to roll again please!"
					puts "\n"

					roll()
				elsif user > comp
					puts "User Wins!"
					puts "\n"

					@userPoints << user
				elsif user < comp
					puts "You lose"
					puts "\n"
					
					@computerPoints << comp
				else
					puts "Error"
					dic_game()
				end
			end

			roll()

			if @userPoints.length() == @rounds
			puts "User wins #{@userPoints.length} to #{@computerPoints.length}!"
			puts "\n"

			play_again()
			elsif @computerPoints.length() == @rounds
				puts "Computer wins #{@computerPoints.length} to #{@userPoints.length}"
				puts "\n"

				play_again()
			end
		end
	end
end

dic_game()


