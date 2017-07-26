# You have been hired by a homeless shelter to keep track of all the people who check in and stay.

# You need to write a program that keeps track of Names, Age, Any illnesses they need medication for, and if they stayed there within the last 30 days. Print a table that stores this information. Use a gem for the table.

# Add a feature to your program that will check out a person from your list. Store their data in a separate list that stores their info and starts a timer for 1 week.

# Turn them into dragons.

require 'terminal-table'
require 'date'
require 'csv'
require 'pry'

@rows = []
@rows2 = []

CSV.foreach("homeless_data.txt", converters: :all) do |row|
	row[4] = Date.parse(row[4]) if row[4] != nil
	row[5] = Date.parse(row[5]) if row[5] != nil

  @rows << row
end

@rows.each do |person|
	days = ((person[5].nil? ? Date.today : person[5]) - person[4]).to_i
	person[6] = days
end

def prompt(default, text)
  if default == ""
  	print(text + ' ') 
  else
  	print(text + ' [' + default + '] ')
  end
  result = gets.chomp.strip
#  binding.pry
  prompt(default,text) if result == "" && default == ""
  return result.empty? ? default : result
end

def menu_method
	@menu = ["Check-in people", "Check-out People", "Check-in Table", "Check-out Table"]
	option_num = 0

	@menu.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

	@menu_options = prompt("0", "Pick a number from the Menu:").to_i
	puts "\n"

	case @menu_options
	when 0
		main_method
	when 1
		check_out
	when 2
		in_table_method
	when 3
		@rows2 = @rows.find_all { |homeless| homeless[5] == nil }
		days = prompt('7', 'How many days allowed to stay before check-out?').to_i
		@rows2Filtered = @rows2.find_all { |co_person| (Date.today - co_person[4]) >= days }
		out_table_method
	end
end

def main_method
	info()
	check = check_date()
	check = check_date_after_30()

	# binding.pry
	@rows << [@first_name, @last_name, @age, @illnesses, @checkin_date, @checkout_date, @days] unless check == nil
	# @rows.uniq!

	add_another()
end

def info
	@first_name = nil
	@last_name = nil
	@age = nil
	@illnesses = nil
	@checkin_date = nil
	@checkout_date = nil

  @first_name = (prompt("", "What's your first name?")).capitalize
  @last_name = (prompt("Doe", "What's your last name?")).capitalize
  @age = (prompt("27", "What's your Age?")).to_i
  
  medication = (prompt("n", "Do you have an illnesses that needs medication (y or n)?"))
	if medication.downcase == 'y'
		print "What illnesses do you have? "
		@illnesses = gets.chomp.strip
	end

  @checkin_date = Date.parse(prompt(Date.today.to_s, 'Check-In Date?'))
	@days = ((@checkout_date.nil? ? Date.today : @checkout_date) - @checkin_date).to_i
end

def check_date
	@rows.each do |x|
		if @first_name == x[0]
			if @last_name == x[1]
				if @age == x[2]
					if @checkin_date < (x[4] + 30)
						day = (x[4] + 30).strftime("%b. %d, %Y")

						puts "You have stayed here in the last 30 days."
						puts "You can come back and stay after #{day}"
						puts "\n"

						return nil
					end
				end
			end
		end
	end
end

def check_date_after_30
	@rows.each do |x|
		if @first_name == x[0]
			if @last_name == x[1]
				if @age == x[2]
					if @checkin_date > (x[4] + 30)
						@rows.delete(x)

						return ""
					end
				end
			end
		end
	end
end

def add_another
	print "Would you like to add another homeless person (y or n)? "
	@answer = gets.chomp.strip
	puts "\n"

	if @answer.downcase == "y"
		main_method()
	elsif @answer.downcase == "n"
		in_table_method
	else
		add_another()
	end
end

def in_table_method
	table = Terminal::Table.new :title => "Homeless Shelter", :headings => ['First', 'Last', 'Age', 'Illnesses', 'Check-in Date', 'Check-out Date', 'Days'], :rows => @rows 

	table.style = {:all_separators => true, :border_x => "=", :border_i => "+", :alignment => :center}

	puts table
	puts "\n"
end

def check_out
	@rows2 = @rows.find_all { |homeless| homeless[5] == nil }

	days = prompt('7', 'How many days allowed to stay before check-out?').to_i

	@rows2Filtered = @rows2.find_all { |co_person| (Date.today - co_person[4]) >= days }

	check_out_done

	# @rows2.each do |person|
	# 	# date[4] + 7
	# 	checkin_date = person[4]
	# 	if (checkin_date + 7) >= (Date.today)
	# 		person[4] = Date.today
	# 		@rows2 << person

	# 		check_out_done
	# 			@rows.delete(person)

	# 	end
	# end

	out_table_method
end

def check_out_done
	@rows2Filtered.each do |person|
		puts "\n"
		out = (prompt("y", "Did #{person[0]}, #{person[1]} age #{person[2]} get checked out (y/n)?")).downcase

		person[5] = Date.today if out == "y"
#		@rows.delete(person) if out == "y"
	end
	puts "\n"
end

def out_table_method
	checkout_table = Terminal::Table.new :title => "Homeless Shelter Checkout list", :headings => ['First', 'Last', 'Age', 'Illnesses', 'Check-in Date', 'Check-out Date', 'Days'], :rows => @rows2Filtered 

	checkout_table.style = {:all_separators => true, :border_x => "=", :border_i => "+", :alignment => :center}

	puts checkout_table
	puts "\n"
end

def exit_method
	@exit_program = (prompt("n", "Would you like to exit (y or n)?"))
	puts "\n"
end

@exit_program = 'n'
until @exit_program.downcase == 'y'
	menu_method

	File.write("homeless_data.txt", @rows.map(&:to_csv).join)

	exit_method()
end

# Just for Fun!!!
dragons = (prompt("n", "Would you like to turn all the homeless people in to Dragons (y or n)?")).downcase
if dragons == "y"
	@rows.map { |person| person[0] = "Dragon" }
end

in_table_method() if dragons == "y"
