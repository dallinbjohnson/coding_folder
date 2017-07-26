# write a language translator.

# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# AZYXEWVTISRQPNOMLKJHUGFDCB

# Using this conversion write a sentence in English that translates to this alphabet.

hash = {
	"a" => "a",
	"b" => "z",
	"c" => "y",
	"d" => "x",
	"e" => "e",
	"f" => "w",
	"g" => "v",
	"h" => "t",
	"i" => "i",
	"j" => "s",
	"k" => "r",
	"l" => "q",
	"m" => "p",
	"n" => "n",
	"o" => "o",
	"p" => "m",
	"q" => "l",
	"r" => "k",
	"s" => "j",
	"t" => "h",
	"u" => "u",
	"v" => "g",
	"w" => "f",
	"x" => "d",
	"y" => "c",
	"z" => "b"
}

print "Enter a sentence to be translated: "
input = gets.chomp.strip.downcase
puts "\n"

arr = input.split('')

arr.each do |letter|
	hash.each do |key, value|

		var = letter.gsub!(key, value)

		if var != nil
			break
		end

	end
end

puts arr.join('')



def translate(str)
	alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
	replacements = 'azyxewvtisrqpnomlkjhugfdcbAZYXEWVTISRQPNOMLKJHUGFDCB'

	str.tr(alphabet, replacements)
end

puts "\n"
puts translate(input)






