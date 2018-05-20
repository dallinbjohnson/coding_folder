# Do fibonacci
# 0 + 1 = 1 + 1 = 2 + 1 = 3 + 2 = 5 + 3 = 8 + 5 = 13

print "How high would you like to do the fibonacci sequence? "
max = gets.chomp.strip.to_i

arr = [*1..max]

count = 0
total = []
num1 = 1
num2 = 2
total.push(num1, num2)

while arr.length > count
	num3 = num1 + num2
	num1 = num2
	num2 = num3
	total << num3

	count += 1
end

puts total
