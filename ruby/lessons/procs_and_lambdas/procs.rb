full_name = Proc.new { |first, last| first + " " + last }

p full_name["Dallin", "Johnson"]
p full_name.call("Dallin", "Johnson")

# You can do anything with in the proc.  You can make a whole program or process
full_name1 = Proc.new { |first| first * 5 }

p full_name1["Dallin"]

# Write the proc with out {}. You use {} if you want to write a your proc on one line.
full_name2 = Proc.new do |first|
	first * 5 
end

p full_name2["Dallin"]