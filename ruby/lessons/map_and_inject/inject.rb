# Old method to add up an array
total = 0
[3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].each do |i|
	total += i 
end
puts total

# Ruby's way to add(math) up an array 
p [3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:+)

p [3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:*)
