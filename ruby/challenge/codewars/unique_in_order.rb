# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

# For example:

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

require 'rspec'

def unique_in_order(iterable)
  if iterable.is_a? String
   p iterable.split('').chunk{|n| n}.map(&:first)
  else
   p iterable.chunk{|n| n}.map(&:first)
  end
end

unique_in_order('AAAABBBCCDAABBB')
unique_in_order('ABBCcAD')
unique_in_order([1,2,2,3,3])

describe 'Implement the function unique_in_order' do
  it 'takes a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements' do

    expect(unique_in_order('AAAABBBCCDAABBB')).to eq(['A', 'B', 'C', 'D', 'A', 'B'])
  end
end