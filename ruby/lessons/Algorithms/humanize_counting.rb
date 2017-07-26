require 'to_words'
require 'pry'

arr = [*1..1000]
arr2 = []

arr.each do |num|
	arr2 << num.to_words
end

word = arr2.join().gsub(" ", "").gsub("-", "")

p word.length

# #####################################

require 'humanize'

no_space_array, total = [], 0
(1..1000).to_a.map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-") }
no_space_array.each { |element| total += element.length }

p total

# ##########################################

p (1..1000).map(&:humanize).inject(:+).delete(" ").delete("-").length