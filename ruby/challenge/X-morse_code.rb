# create a Morse Code translator

morse = {
	"a" => ".-",
	"b" => "-...",
	"c" => "-.-.",
	"d" => "-..",
	"e" => ".",
	"f" => "..-.",
	"g" => "--.",
	"h" => "....",
	"i" => "..",
	"j" => ".---",
	"k" => "-.-",
	"l" => ".-..",
	"m" => "--",
	"n" => "-.",
	"o" => "---",
	"p" => ".--.",
	"q" => "--.-",
	"r" => ".-.",
	"s" => "...",
	"t" => "-",
	"u" => "..-",
	"v" => "...-",
	"w" => ".--",
	"x" => "-..-",
	"y" => "-.--",
	"z" => "--..",
	" " => "/",
	"1" => ".----",
	"2" => "..---",
	"3" => "...--",
	"4" => "....-",
	"5" => ".....",
	"6" => "-....",
	"7" => "--...",
	"8" => "---..",
	"9" => "----.",
	"0" => "-----",
	"." => ".-.-.-",
	"," => "--..--",
	"?" => "..--..",
	"!" => "..--.",
	":" => "---...",
	";" => "-.-.-",
	'"' => ".-..-.",
	"'" => ".----.",
	"/" => "-..-.",
	"(" => "-.--.-",
	")" => "-.--.-",
	"+" => ".-.-.",
	"-" => "-....-",
	"=" => "-...-"
}

puts "Enter a sentence to be translated in to Morse Code:"
input = gets.chomp.strip
puts "\n"

arr = input.split('')

arr.each do |letter|
	morse.each do |key, value|

		var = letter.gsub!(/#{key}/i, value)

		if var != nil
			break
		end

	end
end

puts arr.join(' ')

# puts "Enter Morse Code to be translated in to English:"
# input = gets.chomp.strip

# p arr = input.split(' ')

# arr.each do |letter|
# 	morse.each do |key, value|
# 		p value
# 		var = letter.gsub!(value, key)

# 		if var != nil
# 			break
# 		end

# 	end
# end

# puts arr.join(' ')



