puts @dragon = ["How are you doing today dice", "my day is great thanks dice"]

def dragon0
	@dragon.each do |s|
		s.gsub!(/dice/i, "Dragons")
	end
end
dragon0()

puts @dragon