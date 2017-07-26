# Make a frame around any input from the user.

# *******
# *Hello*
# *my   *
# *bro  * 
# *whats*
# *up?  *
# *******

puts "Enter a sentence to put a border around it:"
input = gets.chomp.strip
puts "\n"

arr = input.split(' ')

length = arr.max {|x, y| x.length <=> y.length}.length + 1

arr.map do |word|
	word.insert(0, "|")
	until word.length == length
		word.insert(-1, " ")
	end
	word.insert(length, "|")
end

length += 1

puts "*" * length

puts arr

puts "*" * length

