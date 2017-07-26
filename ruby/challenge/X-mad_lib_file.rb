# Level one: Write a mad lib that pulls from a separate file that has a list of nouns, verbs, adjectives, pronowns, etc.

# Level Two: Get user input that writes into those files from your main file.

# Level Two Plus: make them all in different files, making them as modules. Figure out how to bring in and implement the modules into your main Mad Lib program.

def words_method
	File.open("word_list.txt") do |file|
	  file_lines = file.readlines()
	  return random_line = file_lines[Random.rand(0...file_lines.size())].chomp
	end
end

puts "_____________! he said ________ as he jumped into his convertible
exclamation             adverb
______ and drove off with his __________ wife.
 noun                         adjective"

puts "*#{words_method}*! he said *#{words_method}* as he jumped into his convertible
*#{words_method}* and drove off with his *#{words_method}* wife."