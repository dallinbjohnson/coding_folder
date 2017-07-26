# FizzBuzz hashed

require 'rspec'

def hashed_fizz_buzz num
	hash = Hash.new

	1.upto(num).each do |e|
		if (e % 3 == 0) && (e % 5 == 0)
			hash[e] = "FizzBuzz"
		elsif e % 3 == 0
			hash[e] = "Fizz"
		elsif e % 5 == 0
			hash[e] = "Buzz"
		else
			hash[e] = e
		end
	end
	hash
end

p hashed_fizz_buzz(25)

describe 'Hashed FizzBuzz' do
	it 'Generates a fizz buzz hash' do
		final_hash = {1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16}

		expect(hashed_fizz_buzz(16)).to eq(final_hash)
	end
end