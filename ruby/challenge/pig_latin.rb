require 'pry'

def play_again
	puts "\n"
	print "Would you like to write another phrase (y or n)? "
	@answer = gets.chomp.strip

	if @answer.downcase == "y"
		pig_latin()
	elsif @answer.downcase == "n"
		exit
	else
		play_again()
	end
end

def pig_latin
	puts sentence = "Enter your phrase to convert to Pig Latin:"
	phrase = gets.chomp.strip

	@pig = phrase.scan(/[\w'-]+|[[:punct:]]+/).map do|word| 
		if word.start_with?('a','e','i','o','u','y') 
			word + "way"
		elsif word.match(/[!@#$%^&*()-=_+|;':",.<>?']/i)
			word
		else
			s = word.slice!(/^./)
			word + s + "ay"
		end
	end

	@pig = @pig.join(" ")

	@pig.gsub!(/ [!@#$%^&*()-=_+|;':",.<>?']/i) do |x|
		x.lstrip
	end

	puts @pig
end

def pig_to_english
	# binding.pry

	@pig = @pig.scan(/[\w'-]+|[[:punct:]]+/).map do|word| 
		if word.end_with?("way") 
			word.chop!.chop!.chop!
		elsif word.match(/[!@#$%^&*()-=_+|;':",.<>?']/i)
			word
		elsif word.end_with?("ay")
			word.chop!.chop!
			s = word.slice!(word.length - 1)
			s + word
		end
	end

	@pig = @pig.join(" ")

	@pig.gsub!(/ [!@#$%^&*()-=_+|;':",.<>?']/i) do |x|
		x.lstrip
	end

	puts @pig
end

pig_latin()

puts "\n"
print "Would you like to turn a Pig Latin phrase in to English (y or n)? "
english = gets.chomp.strip
if english.downcase == "y"
	pig_to_english()
end

until @answer == "n"
	play_again()
end