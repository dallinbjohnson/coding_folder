# Sort through an array of numbers and give the highest number without using .max

numbers = [*1..100].shuffle!

# 100.times do
# 	numbers << rand(1..100)
# end

p numbers

numbers.sort! { |a, b| b <=> a }

puts "The highest number in this array is #{numbers[0]}"
