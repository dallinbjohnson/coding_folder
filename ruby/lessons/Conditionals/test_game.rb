player = {
	"Speed" => 10,
	"Rate of Firing" => 100,
	"Health" => 2,
	"Reload" => 4,
	"Power" => 10
}

require 'pry'

@colas = ["speed", "rate of firing", "health", "reload", "power"]
@have_colas = []
@points = 20000

def change_arr
	# binding.pry
	@have_colas << @colas.select{ |v| v == @cola_choice }
	@have_colas.flatten!
	if @have_colas.include?(@cola_choice)
		@colas.delete(@cola_choice)
	end
end

def speed_def
	speed = 10

	print "Would you like to drink a Speed cola (y or n)? "
	speed_cola = gets.chomp.strip

	if speed_cola.downcase == "y" && @points >= 3000
		@points -= 3000
		speed *= 2
	elsif @points < 2500
		puts "You don't have enough points."
	else
		puts "You don't drink it."
	end

	change_arr
end

def reload_def
	rate_of_firing = 100

	print "Would you like to drink a Reload cola (y or n)? "
	speed_cola = gets.chomp.strip

	if speed_cola.downcase == "y" && @points >= 3000
		@points -= 3000
		reload /= 2
	elsif @points < 3000
		puts "You don't have enough points."
	else
		puts "You don't drink it."
	end

	change_arr
end

# p reload

def health_def
	health = 2

	print "Would you like to drink a Health cola (y or n)? "
	speed_cola = gets.chomp.strip

	if speed_cola.downcase == "y" && @points >= 2500
		@points -= 2500
		health *= 2
	elsif @points < 2500
		puts "You don't have enough points."
	else
		puts "You don't drink it."
	end

	change_arr
end

def rof_def
	reload = 4

	print "Would you like to drink a Rate of Firing cola (y or n)? "
	speed_cola = gets.chomp.strip

	if speed_cola.downcase == "y" && @points >= 2000
		@points -= 2000
		rate_of_firing *= 2
	elsif @points < 2500
		puts "You don't have enough points."
	else
		puts "You don't drink it."
	end

	change_arr
end

def power_def
	power = 10

	print "Would you like to drink a Power cola (y or n)? "
	speed_cola = gets.chomp.strip

	if speed_cola.downcase == "y" && @points >= 5000
		@points -= 2500
		power *= 2
	elsif @points < 5000
		puts "You don't have enough points."
	else
		puts "You don't drink it."
	end

	change_arr
end

until @colas.empty?
	puts "Colas:"
	puts @colas

	print "Which cola do you want? "
	@cola_choice = gets.chomp.strip.downcase
	p @colas

	if @cola_choice == "speed"
		speed_def()
	elsif @cola_choice == "rate of firing"
		rof_def()
	elsif @cola_choice == "health"
		health_def()
	elsif @cola_choice == "reload"
		reload_def()
	elsif @cola_choice == "power"
		power_def()
	end

	p @points
	p @have_colas
	p @colas
	puts "\n"
end



