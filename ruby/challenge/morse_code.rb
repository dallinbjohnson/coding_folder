# create a Morse Code translator
require 'pry'

@morse = {
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

def prompt(default, text)
  if default == ""
  	print(text + ' ')
  else
  	print(text + ' Default[' + default + '] ')
  end
  result = gets.chomp.strip

  prompt(default,text) if result == "" && default == ""
  return result.empty? ? default : result
end

def morse_encode
	puts "Enter a sentence to be translated in to Morse Code:"
	input = gets.chomp.strip
	puts "\n"

	arr = input.split('')

	arr.each do |letter|
		# @morse.fetch(letter)
		@morse.each do |key, value|

			var = letter.gsub!(/#{key}/i, value)

			if var != nil
				break
			end

		end
	end

	puts "\n"
	puts arr.join(' ')
	puts "\n"

	menu_method()
end


def morse_decode
	puts "Enter Morse Code to be translated in to English:"
	input = gets.chomp.strip

	arr = input.split(' ')

	arr = arr.map {|letter| @morse.key(letter) }

	# arr.each do |letter|
	# 	p letter = @morse.key(letter)
	# 	binding.pry
	# 	@morse.each do |key, value|
	# 		p value
	# 		var = letter.gsub!(value, key)

	# 		if var != nil
	# 			break
	# 		end

	# 	end
	# end

	puts "\n"
	puts arr.join('')
	puts "\n"

	menu_method()
end

def exit_program
	exit
end

def menu_method
	@menu = ["Translate to Morse Code", "Translate from Morse Code", "Exit"]
	option_num = 1

	puts "Menu:"
	@menu.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

	@menu_options = prompt("1", "Pick a number from the Menu:").to_i
	puts "\n"

	case @menu_options
	when 1
		morse_encode()
	when 2
		morse_decode()
	when 3
		exit_program()
	else
		menu_method()
	end
end

menu_method()
