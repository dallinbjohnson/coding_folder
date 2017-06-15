# Bob is a lackadaisical teenager. In conversation, his response are very limited.
# Bob answers 'Sure.' If you ask him a question.
# He answers 'Whoa, chill out!' If you yell at him
# He says 'Fine. Be that way!' If you address him without actually saying anything
# He answers 'Whatever.' to anything else.

print "Say something to Bob: "
answer = gets.chomp

if answer.include?('?')
	puts "Sure."
elsif answer.include?('!')
	puts "Whoa, chill out!"
elsif answer.downcase.include?('bob') || answer.include?('')
	puts "Fine. Be that way!"
else
	puts "Whatever."
end

