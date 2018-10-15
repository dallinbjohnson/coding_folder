require 'pry'
require 'matrix'

# puts ["♚", "♛", "♜", "♝", "♞", "♟"]
# puts ["♔", "♕", "♖", "♗", "♘", "♙"]
# puts "⬛"
# puts "⬜"

@pieces = {
	"black" => {
		"king" => "♔",
		"queen" => "♕",
		"rook" => "♖",
		"bishop" => "♗",
		"knight" => "♘",
		"pawn" => "♙"
	},
	"white" => {
		"king" => "♚",
		"queen" => "♛",
		"rook" => "♜",
		"bishop" => "♝",
		"knight" => "♞",
		"pawn" => "♟"
	}
}

@boardArr1 = [
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"],
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"],
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"],
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"]
]
@boardArr = [
	["♜"," ♞"," ♝"," ♛"," ♚"," ♝"," ♞"," ♜"],
	["♟"," ♟"," ♟"," ♟"," ♟"," ♟"," ♟"," ♟"],
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"],
	["⬜","⬛","⬜","⬛","⬜","⬛","⬜","⬛"],
	["⬛","⬜","⬛","⬜","⬛","⬜","⬛","⬜"],
	["♙"," ♙"," ♙"," ♙"," ♙"," ♙"," ♙"," ♙"],
	["♖"," ♘"," ♗"," ♕"," ♔"," ♗"," ♘"," ♖"]
]

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

def exit_program
	exit
end

def chessboard_method
	@letters = [*('a'..'h')]

	print " "
	(0..7).each { |i| print " #{i} " }
	puts "\n"
	@boardArr.each_with_index do |square, index|
		print "#{index} "
	  puts square.join(" ")
	end
	puts "\n"
end

def map_position_method
	@position = {}

	Matrix[*@boardArr].each_with_index do |e, row, col| 
		@position.store([row, col], e)
	end

	# @boardArr[row1][column1] = position[[row, column]]
	# @boardArr[row][column] = @boardArr1[row][column]
	# b = position.select {|k, v| v.strip == "♖"}
end

def white_method
	chessboard_method
	puts "Whites turn:"
	row = prompt("", "Enter a row number for the piece you want:").to_i
	column = prompt("", "Enter a column number for the piece you want:").to_i
	puts "\n"
	row1 = prompt("", "Enter a row number for the place you want to move to:").to_i
	column1 = prompt("", "Enter a column number for the place you want to move to:").to_i
	puts "\n"

	map_position_method()
	if (@pieces["white"].values).include?(@position[[row, column]].strip)
		@boardArr[row1][column1] = @position[[row, column]]
		@boardArr[row][column] = @boardArr1[row][column]
		map_position_method()
	else
		white_method()
	end
end

def black_method
	chessboard_method
	puts "Blacks turn:"
	row = prompt("", "Enter a row number for the piece you want:").to_i
	column = prompt("", "Enter a column number for the piece you want:").to_i
	puts "\n"
	row1 = prompt("", "Enter a row number for the place you want to move to:").to_i
	column1 = prompt("", "Enter a column number for the place you want to move to:").to_i
	puts "\n"

	map_position_method()
	if (@pieces["black"].values).include?(@position[[row, column]].strip)
		@boardArr[row1][column1] = @position[[row, column]]
		@boardArr[row][column] = @boardArr1[row][column]
		map_position_method()
	else
		black_method()
	end
end

def win_method
	@win == "winner"

	if (@boardArr.flatten).include?(" ♚")	
		puts "White Wins!"
	else
		puts "Black Wins!"
	end

	puts "\n"
	chessboard_method()
	exit_program()
end

@win = "start"
while @win == "start"
	white_method()
	
	win_method if !(@boardArr.flatten).include?(" ♚" && " ♔")

	black_method()

	win_method if !(@boardArr.flatten).include?(" ♚" && " ♔")
end

# def pick_peice_method
# 	peice = ["♚", "♛", "♜", "♝", "♞", "♟", "Exit"]
# 	option_num = 1

# 	puts "Menu:"
# 	peice.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

# 	menu_options = prompt("6", "Pick a number from the Menu:").to_i
# 	puts "\n"

# 	case menu_options
# 	when 1
		
# 	when 2
		
# 	when 3
		
# 	when 4
		
# 	when 5
# 		exit_program()
# 	else
# 		pick_peice_method()
# 	end
# end

# pick_peice_method
