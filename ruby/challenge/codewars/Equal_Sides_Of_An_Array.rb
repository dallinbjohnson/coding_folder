# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
#
# For example:
#
# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
#
# Let's look at another one.
# You are given the array {1,100,50,-51,1,1}:
# Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.
#
# Last one:
# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.
#
# Note: Please remember that in most programming/scripting languages the index of an array starts at 0.
#
# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
#
# Output:
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.
#
# Note:
# If you are given an array with multiple answers, return the lowest correct index.
# An empty array should be treated like a 0 in this problem.

require 'pry'
require 'rspec'

def find_even_index(arr)
  return 0 if arr == []
  index = 0
  until index == arr.length
    f = arr[0, index].inject(&:+)
    l = arr[index + 1, arr.length].inject(&:+)

    if arr[0, index].inject(&:+) == arr[index + 1, arr.length].inject(&:+)
      return index
    elsif f == nil && l == 0
      return 0
    elsif f == 0 && l == nil
      return (arr.length - 1)
    elsif l == nil
      return -1
    else
      index += 1
    end
  end
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 # "Should pick the first index if more cases are valid")
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1

describe 'Equal Sides Of An Array' do
  it 'return the index of the array where both sides added up are equal' do
    expect(find_even_index([1,2,3,4,3,2,1])).to eq(3)
  end
end

#
# Other options
#

def find_even_index(arr)
  arr.length.times do |idx|
    if arr[0...idx].inject(0, :+) == arr[(idx + 1)..-1].inject(0, :+)
      return idx
    end
  end

  return -1
end

def find_even_index(ary)
  0.upto(ary.length).select{|l| ary[0..l].reduce(:+) == ary[l..-1].reduce(:+)}.first || -1
end

def find_even_index(arr)
  left = 0
  right = arr.reduce(&:+)
  arr.each_with_index do |x, i|
    right -= x
    return i if left == right
    left += x
  end
  -1
end

def find_even_index(arr)
  v = arr.each_index.select do |i|
    arr[0...i].inject(0, :+) == arr[i+1..-1].inject(0, :+)
  end
   v[0] ? v[0] : -1
end

def find_even_index(arr)
arr.unshift(0).push(0)
  for i in 1..arr.length
    if arr[0..i].inject(:+) == arr.drop(i).inject(:+)
      index ||= i - 1
    end
  end
  index ||= -1
end
