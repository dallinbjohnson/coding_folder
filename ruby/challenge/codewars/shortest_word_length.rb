# x Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

# find_short("bitcoin take over the world maybe who knows perhaps"), returns 3
# find_short("turns out random test cases are easier than writing out basic ones"), returns 3
# find_short("lets talk about javascript the best language"), returns 3
# find_short("i want to travel the world writing code one day"), returns 1
# find_short("Lets all go on holiday somewhere very cold"), returns 2

require 'rspec'

def find_short(s)
    p l = (s.split(' ').sort_by(&:length)[0]).length
    return l # l: length of the shortest word
end

find_short("bitcoin take over the world maybe who knows perhaps")
find_short("i want to travel the world writing code one day")
find_short("Lets all go on holiday somewhere very cold")

describe 'shortest word' do
  it 'return the length of the shortest word' do

    expect(find_short("bitcoin take over the world maybe who knows perhaps")).to eq(3)
  end
end