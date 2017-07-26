# def divide num1, num2
# 		num1 / num2
# end

# divide 5, 0

# rescues all errors if they occurred
# def divide1 num1, num2
# 	begin
# 		num1 / num2
# 	rescue => e
# 		puts "Error Occurred: #{e}"
# 	end
# end

# divide1 5, 0

# Only rescues the ZeroDivisionError
def divide1 num1, num2
	begin
		num1 / num2
		asdfasdfasdf
	rescue ZeroDivisionError => e
		puts "Error Occurred: #{e}"
	end
end

divide1 5, 5