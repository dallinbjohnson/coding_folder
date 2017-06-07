def combine
	sarray = ["a","b","c","d"]
	narray = [1,2,3]

	newarray = sarray.zip(narray).flatten.compact

	print newarray
end

combine()
puts " "

def larray
	sarray = ["a","b","c","d"]
	narray = [1,2,3]
	newarray = []
	i = 0

	while i < sarray.length
		newarray << sarray[i]
		newarray << narray[i]

		i += 1
	end

	newarray.compact!
	print newarray
end

larray()