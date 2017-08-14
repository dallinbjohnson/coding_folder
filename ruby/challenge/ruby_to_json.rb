require 'date'
require 'json'

p array = [['Dallin', 'Johnson', 23, Date.today],['Ty', 'Johnson', 21, 
	(Date.today + 1)]]
other_array = []

File.open("ruby_output_json.json") do |f|
	f.each_line do |line|
  	other_array << JSON.parse(line)
	end
end

other_array.map do |record|
	record[3] = Date.parse(record[3])
end

File.write("ruby_output_json.json", array.map(&:to_json).join("\n"))

p other_array