count = 0
count += 1
print count
puts "-" * 10

my_array = Array.new
p my_array.class

count += 1
print count
puts "-" * 10

my_array = []
p my_array.class

count += 1
print count
puts "-" * 10

my_array = Array.new(3)
p my_array

count += 1
print count
puts "-" * 10

my_array = Array.new(3, true)
p my_array

count += 1
print count
puts "-" * 10

my_array = Array.new(4) { Hash.new }
p my_array

count += 1
print count
puts "-" * 10

my_empty_table = Array.new(3) { Array.new(3) }
p my_empty_table

count += 1
print count
puts "-" * 10

arr = [1,2,3,4,5,6]
p arr[2]
p arr[100]
p arr[-3]
p arr[2, 3]
p arr[1..4]
p arr[1..-3]

count += 1
print count
puts "-" * 10

p [1,2] << "c" << "d" << [3,4]

count += 1
print count
puts "-" * 10

my_empty_array = []
my_empty_array << "Append"
p my_empty_array

count += 1
print count
puts "-" * 10

my_empty_array << "Append"
my_empty_array << "my"
my_empty_array << "name"
my_empty_array << "Dallin"
p my_empty_array

count += 1
print count
puts "-" * 10

source = [1,2,3,4,5,6]
def array_copy(source)
	destination = []

	source.each do |number|
		destination << number if number < 4
	end

	return destination
end
p array_copy(source)

count += 1
print count
puts "-" * 10

array = [1,2,3,4,5]
p array2 = array.map { |i| i + 1 }
p array
p array2
array.map! { |i| i + 1 }
p array

count += 1
print count
puts "-" * 10





