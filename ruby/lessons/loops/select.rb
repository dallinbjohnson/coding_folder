# Given an array of integers
# Only gab the even integers

p ((1..10).to_a.select do |x|
	x.even?
end)

 p (1..10).to_a.select { |x| x.even? }

p (1..10).to_a.select(&:even?)

# Given an array of strings
# Return only the words that are over 5 letters

arr = %w(The quick brown fox jumped over the lazy dog)

p arr.select { |x| x.length > 5 }

# Given an array of strings
# Return all of the vowels
p %w(a b c d e f g).select { |v| v =~ /[aeiou]/ }
