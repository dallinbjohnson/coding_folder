# Array that holds the answers to all the questions
@answers = ["b", "b", "a", "d"]
n = 0

# asks if you would like to play again then exits, starts the game over, or prompts the question again
def play_again
	puts "\n"
	print "Would you like to play again (y or n)? "
	@answer = gets.chomp.strip
	puts "\n"

	if @answer.downcase == "y"
		question()
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

# prints if you answered the right questions
def winner (choice, n)
	if choice.downcase == @answers[n]
		puts "Correct answer!"
		puts "\n"
	else
		puts "Incorrect answer"
		puts "You lost the game"
		play_again()
	end
end

# This message tells the user that they won the whole game
def won
	puts "You Won the Game!!!!!!!!! celebrate you are a Millionaire!"
end

# Questions and answers printed for the game
def question
	puts "This question is worth $25,000!"
	puts "Which of these U.S. Presidents appeared on the television series 'Laugh-In'?"
	puts "\n"
	puts "A: Lyndon Johnson  B: Richard Nixon
C: Jimmy Carter  D: Gerald Ford"
	choice = gets.chomp.strip

	n = 0
	winner(choice, n)

	puts "This question is worth $25,000!"
	puts "In the children's book series, where is Paddington Bear originally from?"
	puts "\n"
	puts "A: India  B: Peru
C: Canada  D: Iceland"
	choice = gets.chomp.strip

	n += 1
	winner(choice, n)

	puts "This question is worth $25,000!"
	puts "What letter must appear at the beginning of the registration number of all non-military aircraft in the U.S.?"
	puts "\n"
	puts "A: N  B: A
C: U  D: L"
	choice = gets.chomp.strip

	n += 1
	winner(choice, n)

	puts "This question is worth $25,000!"
	puts "Who delivered the less famous two-hour speech that preceded Abraham Lincoln's two-minute Gettysburg Address?"
	puts "\n"
	puts "A: Wendall Phillips  B: Daniel Webster
C: Robert G. Ingersoll  D: Edward Everett"
	choice = gets.chomp.strip

	n += 1
	winner(choice, n)
	won()
	play_again()
end

puts "Welcome to who wants to be a Millionaire!"
puts "\n"

# loops through the game till the user wants to leave
until @answer == "n"
	question()
	play_again()
end
