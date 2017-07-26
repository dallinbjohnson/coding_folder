require 'date'
require 'csv'

array = []

# File.open("homeless_data.txt") do |f|
#   f.each_line do |line|
#     array << line.split.map(&:to_s)
#   end
# end

# p array

a = [["Dallin", "Johnson", 23, nil, Date.today, (Date.today + 1)],["Ty", "Johnson", 21, nil, Date.today, (Date.today + 1)],["Shayla", "Johnson", 21, nil, Date.today, (Date.today + 1)]]
# data = a.inject([]) { |csv, row|  csv << CSV.generate_line(row) }.join("")

# File.open("homeless_data.txt", "w+") do |f|
#   f.puts(data) 
# end

CSV.foreach("homeless_data.txt", converters: :all) do |row|
	row[4] = Date.parse(row[4])
	row[5] =Date.parse(row[5]) if row[5] != nil

  array << row
end

p array

# File.write("homeless_data.txt", a.map(&:to_csv).join)