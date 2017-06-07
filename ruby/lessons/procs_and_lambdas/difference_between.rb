#Argument Count
# full_name = lambda { |first, last| first + ' ' + last }
# p full_name.call("Dallin", "Bryce", "Johnson")

# full_name = Proc.new { |first, last| first + ' ' + last }
# p full_name.call("Dallin", "Bryce", "Johnson")

#Return Behavior
# def my_method
# 	x = lambda { return }
# 	x.call
# 	p "Text from within the method"
# end

# my_method

def my_method
	x = Proc.new { return }
	x.call
	p "Text from within the method"
end

my_method