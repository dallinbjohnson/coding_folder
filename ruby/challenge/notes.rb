# millionaire
@choice_arr = ["F", "L", "R", "P", "C"]

def buy(x)
	puts "Which item number do you want?"
	purchase = gets.chomp.strip.to_i
	p @menu.values[x].values[purchase-1]
end

def user_choice
	menu_item = 0

	puts "Which type of item would you like?"
	choice = gets.chomp.strip.chr.upcase

	def choice_item
		n = @choice_arr.index(choice)
		puts n

		@menu.values[n].each do |thing, price|
			menu_item += 1
			puts "#{menu_item}) #{thing}: $#{price}"
		end
		buy(n)
	end
	choice_item(choice)
end
# end millionaire