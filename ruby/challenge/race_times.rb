# You are the one race guy that sees who finished fastest as runners finish. Write a program that when you enter a new race finish time it updates a top 5 finishers list.
# ex output
# 1st: tom 2:10
# 2nd: sue 2:15
# 3rd: wilbur 3:00
# input = greg
# time 2:09
# 1st: greg 2:09
# 2nd: tom 2:10
# 3rd: sue 2:15
require 'faker'

racer_times = {}

def play_again
	puts "\n"
	print "Would you like to race again (y or n)? "
	@answer = gets.chomp.strip

	if @answer.downcase == "y"
		return
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

puts "Your the person that writes down the times for a track race for three racers. Input all the racers times!"

until @answer == /n/i
	3.times do
		name = Faker::Pokemon.unique.name

		puts "\n"
		print "What was the time for #{name} (ex. 2.09)? "
		time = gets.chomp.strip.to_f

		racer_times[name] = time

		racer_times = Hash[racer_times.sort_by{|k, v| v}]

		puts "\n"
		puts "1st: #{racer_times.keys[0]} time: #{racer_times.values[0]}"

		if racer_times.keys[1] != nil
			puts "2nd: #{racer_times.keys[1]} time: #{racer_times.values[1]}"
		end

		if racer_times.keys[2] != nil
			puts "3rd: #{racer_times.keys[2]} time: #{racer_times.values[2]}"
		end

		if racer_times.keys[3] != nil
			puts "4th: #{racer_times.keys[3]} time: #{racer_times.values[3]}"
		end

		if racer_times.keys[4] != nil
			puts "5th: #{racer_times.keys[4]} time: #{racer_times.values[4]}"
		end
	end
	play_again()
end

