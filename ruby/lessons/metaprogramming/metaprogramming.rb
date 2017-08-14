class Baseball
end

# p Baseball.new.swing

class Baseball
	def swing
		"Homerun"
	end
end

# p Baseball.new.swing

class Baseball
	def swing
		"Strike"
	end
end

# p Baseball.new.swing

############################String

class String
	def censor(bad_word)
		self.gsub!("#{bad_word}", "CENSORED")
	end

	def num_of_chars
		self.size
	end
end

# p "The bunny was in trouble with the king's bunny".censor("bunny")

# p "The bunny was in trouble with the king's bunny".num_of_chars

############################
require 'ostruct'

# class Author
# 	attr_accessor :first_name, :last_name, :genre

# 	def author
# 		OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
# 	end

# 	def method_missing(method_name, *arguments, &block)
# 		if method_name.to_s =~ /author_(.*)/
# 			author.send($1, *arguments, &block)
# 		else
# 			super
# 		end
# 	end

# 	def respond_to_missing?(method_name, include_private = false)
# 		method_name.to_s.start_with?('author_') || super
# 	end
# end

# author = Author.new

# author.first_name = "Cal"
# author.last_name = "Newport"
# author.genre = "Computer Science"

# p author.author_genre

# p author.respond_to?(:author_genre)

############################

class Author
	# define_method("some_method") do
	# 	puts "Some details"
	# end

	# def fiction_details(arg)
	# 	puts "Fiction"
	# 	puts arg
	# 	puts "asdfasdfasdf"
	# end

	# def coding_details(arg)
	# 	puts "Coding"
	# 	puts arg
	# 	puts "asdfasdfasdf"
	# end

	# def history_details(arg)
	# 	puts "History"
	# 	puts arg
	# 	puts "asdfasdfasdf"
	# end

	genres = %w(fiction coding history)

	genres.each do |genre|
		define_method("#{genre}_details") do |arg|
			puts "Genre: #{genre}"
			puts arg
			puts genre.object_id
		end
	end
end

author = Author.new
# author.some_method
author.coding_details("Cal Newport")
puts "-"*10
author.fiction_details("Ayn Rand")
puts "-"*10
p author.respond_to?(:history_details)
