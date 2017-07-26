require 'rspec'

def find_element collection, element
  # Manual Solution
  collection.each do |c|
    return c if c[1] == element
  end
end

def find_element1 collection, element
  # Ruby way
  collection.rassoc(element)
end

describe 'Find Element' do
  it 'returns an array from a nested array if the second element equals the queried element' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_element(players, 'Jose Altuve')).to eq([27, 'Jose Altuve'])
  end
end


players = [
  [27, 'Jose Altuve'],
  [2,  'Alex Bregman'],
  [1,  'Carlos Correa'],
  [9,  'Marwin Gonzalez'],
  [10, 'Yulieski Gurriel']
]

p find_element players, 'Alex Bregman'
p find_element1 players, 'Alex Bregman'

