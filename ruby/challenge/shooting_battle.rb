# The year is 1776 and the Lobster backs and minute maids meet in a field to do battle.
# The groups take turns shooting at each other.
# Each person in each group has a 50% chance of being hit and dying.
# How many rounds does it take to determine a winning group.
# 10 v 10

require 'faker'

rounds = 0
lobster = []
maids = []

puts "The year is 1776 and the Lobster backs and minute maids meet in a field to do battle."
puts "The groups take turns shooting at each other. Who will win?!"

until lobster.length == 10 && maids.length == 10
	lobster << Faker::LordOfTheRings.unique.character
	maids << Faker::Superhero.unique.name
end

until lobster.length == 0 || maids.length == 0
	number = rand(1..2)
	lobster1 = lobster.sample
	maids1 = maids.sample

	puts "\n"
	puts "#{lobster1} from the Lobster Backs! Goes against #{maids1} from the Minute Maids!"

	if number == 1
		lobster.delete(lobster1)
		puts "#{lobster1} from the Lobster Backs died"
		rounds += 1
	else
		maids.delete(maids1)
		puts "#{maids1} from the Minute Maids died"
		rounds += 1
	end
	gets
end

if lobster.length == 0
	puts "\n"
	puts "#{maids.length} Maids won! It took #{rounds} rounds."
elsif maids.length == 0
	puts "\n"
	puts "#{lobster.length} Lobsters won! It took #{rounds} rounds."
end