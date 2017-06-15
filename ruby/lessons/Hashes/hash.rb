#section 1
	# Most common syntax
	positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa"}

	# Another way to write a hash
	positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa"}

	# Another way to write a hash
	positions = { :first_base => "Chris Carter", :second_base => "Jose Altuve", :short_stop => "Carlos Correa"}

	# How to gab the value with a specific hash key
	positions[:second_base]

#section 2
	# How to Delete a key and value out of a hash
	people = { jordan: 32, tiffany: 27, kristine: 10, heather: 29 }
	people.delete(:kristine)

	# Puts the keys
	people.each_key do |key|
		puts key
	end
	# Puts the values
	people.each_value do |value|
		puts value
	end

	# Add to a hash
	people[:leann] = 42

	# Swap the position of the keys and values
	people.invert

	# merge to hashes
	people_2 = people.invert
	people.merge(people_2)

	# convert a hash into a array and each key value pare are in another array
	people.to_a

	# converts the keys in to a array
	people.keys

	# converts the values in to a array
	people.values


