# Take a input sentence in and turn every major word in to a acronym
# Examples: Unidentified flying object => UFO
# Federal Bureau of investigation => FBI

words_to_remove = ["and", "or", "but", "nor", "so", "for", "yet", "after", "although", "as", "as if", "as long as", "because", "before", "even if", "even though", "once", "since", "so that", "though", "till", "unless", "until", "what", "when","whenever", "wherever", "whether", "while", "than", "how", "that", "of", "are", "i", "has", "a", "am"]
re = Regexp.union(words_to_remove)

# sentence = "Unidentified flying object"
# sentence1 = "Federal Bureau of investigation"
print "Enter a phrase: "
sentence = gets.chomp.strip

words_to_remove.each do |x|
	sentence.gsub!(/#{re}\b/i, "")
end

# sentence.split.delete_if{|x| words_to_remove.include?(x.downcase)}.join(' ')

sentence.gsub!(/(\w)\w+\W*/, '\1').upcase!

puts sentence