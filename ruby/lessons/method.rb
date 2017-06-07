# def my_method
# 	puts "how are you?"
# end

# my_method()

def baseball_team_list
	x = 10
	return ["A's", "Angles", "Astros"] if x == 10
	# dose not return the rest of the method because it breaks out of the method. This is the only time you would us '''ruby return '''
	# using return is bad practice any other time
	["Yankees", "Mets"]
end

p baseball_team_list()

class Invoice
	# Class method
	def self.print_out
		p "Print out invoice"
	end

	# Instance method
	def convert_to_pdf
		p "Converted to PDF"
	end
end

# Is used less but can use if you want
Invoice.print_out
# Error
# Invoice.convert_to_pdf

# best Practice
i = Invoice.new
i.convert_to_pdf
# Error
# i.print_out


