# Calculate the number of gold pieces on a chessboard given that the number on each square doubles.

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have gold pieces. One gold piece on the first square of a chess board. Two gold pieces on the next. Four on the third, and so on.

# There are 64 squares on a chessboard.
 
# Write code that shows:
# How many gold pieces were on each square, and
# The total number of gold

require 'action_view'

include ActionView::Helpers::NumberHelper

gold = 1
total = []

64.times do |squares|
	total << gold
	puts "There is #{number_with_delimiter(gold)} pieces on square #{squares + 1}"

	gold = gold * 2
end

total = total.inject(&:+)

puts "The total amount of gold pieces is #{number_with_delimiter(total)}"
