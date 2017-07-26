# # millionaire
# @choice_arr = ["F", "L", "R", "P", "C"]

# def buy(x)
# 	puts "Which item number do you want?"
# 	purchase = gets.chomp.strip.to_i
# 	p @menu.values[x].values[purchase-1]
# end

# def user_choice
# 	menu_item = 0

# 	puts "Which type of item would you like?"
# 	choice = gets.chomp.strip.chr.upcase

# 	def choice_item
# 		n = @choice_arr.index(choice)
# 		puts n

# 		@menu.values[n].each do |thing, price|
# 			menu_item += 1
# 			puts "#{menu_item}) #{thing}: $#{price}"
# 		end
# 		buy(n)
# 	end
# 	choice_item(choice)
# end
# # end millionaire

# ##################################


# class Person
# 	def breathe
# 		puts "inhale and exhale"
# 	end
# end

# # p Person.ancestors
# # p Class.ancestors

# class Baby < Person
# 	def speak
# 		puts "Goo Goo Ga Ga"
# 	end
# end

# my_baby = Baby.new
# p my_baby.methods.sort

# ##################################

# VAL = 'Global'

# module Foo
# 	VAL = 'Foo Local'

# 	class Bar
# 		def value1
# 			p VAL
# 		end
# 	end
# end

# class Foo::Bar
# 	def value2
# 		p VAL
# 	end
# end

# Foo::Bar.new.value1
# Foo::Bar.new.value2

# ##################################




