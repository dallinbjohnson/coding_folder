# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

# Example

# filter_list([1,2,'a','b']) == [1,2]
# filter_list([1,'a','b',0,15]) == [1,0,15]
# filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

require 'rspec'

def filter_list(l)
  answer = []
  l.each do |data|
    check = data.is_a? Integer

    answer << data if check == true
  end
  return p answer
end

p filter_list([1,2,'a','b']) == [1,2]
p filter_list([1,'a','b',0,15]) == [1,0,15]
p filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

describe 'filter array' do
  it 'creates a new array with just numbers' do

    expect(find_short([1,2,'a','b'])).to eq([1,2])
  end
end

#
# Other options
#

def filter_list1(l)
l.select{|i| i.is_a?(Integer)}
end

def filter_list2(l)
  l.reject { |x| x.is_a? String }
end

def filter_list3(l)
  l.delete_if { |x| x.class == String }
end

def filter_list4(l)
 l.grep(Numeric)
end
