# An if else statement
x = 10
y = 5
if x == y
	puts "x is the same as y"
else
	puts "x and y are not the same"
end
puts "\n"

# unless statement
players = ["Correa", "Carter", "Altuve"]
unless players.empty?
	players.each {|player| puts player}
end
puts "\n"
# unless, another way to write
players.each {|player| puts player} unless players.empty?
puts "\n"

# A way to write a if statement that is the same as an unless
players.each {|player| puts player} if !players.empty?
puts "\n"

# else if statement
x = 10
y = 100
z = 10
if x == y
	puts "x is equal to y"
elsif x >= z
	puts "x is greater than or equal to z"
elsif x < y
	puts "x is less than y"
else
	puts "Something else"
end
puts "\n"

# multiple conditionals
if x == y && x == z
	puts "x equal to y and z"
end
if x == y || x == z
	puts "x is equal to y or z"
end
if (x == 10 && x == z) || x >= y
	puts "x equal to 10 and z or greater or equal to y"
end
if (x == 10 && x == z) && x != y
	puts "x equal to 10 and z and not equal to y"
end
puts "\n"
