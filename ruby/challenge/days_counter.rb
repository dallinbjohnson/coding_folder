require 'rspec'
require 'date'

def day_counter
	Integer(Date.new(2016, 12, 25) - Date.new(2004, 07, 01))
end

p day_counter

def week_counter
	(Date.today + 7).strftime("%m/%d/%Y")
end

puts week_counter

def week_counter1
	(Date.today + 7).strftime("%b. %d, %Y")
end

puts week_counter1

describe 'Day counter' do
	it 'counts the days between Christmas in 2016 and July 1, 2004' do
		expect(day_counter).to eq(4560)
	end
end

