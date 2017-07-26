# Write three methods that compute the sum of the numbers in an array: using a for-loop, a while-loop, and recursion.

@arr = [*1..10]
i = 0
total = 0

def for_loop
	total = 0
	for i in 0 .. @arr.length - 1
		total += @arr[i]
	end
	puts "For loop Total: #{total}"
end

def while_loop
	i = 0
	total = 0
	while i < @arr.length
		total += @arr[i]

		i += 1
	end
	puts "While loop Total: #{total}"
end

def recursion(i, total)
	if @arr.length > i
		total += @arr[i]
		i += 1
		recursion(i, total)
	else
		return puts "Recursion loop: #{total}"
	end
end

for_loop()
puts "\n"

while_loop()
puts "\n"

recursion(i, total)


