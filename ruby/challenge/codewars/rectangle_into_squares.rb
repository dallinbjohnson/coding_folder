# The drawing below gives an idea of how to cut a given "true" rectangle into squares ("true" rectangle meaning that the two dimensions are different).
#
# alternative text
#
# Can you translate this drawing into an algorithm?
#
# You will be given two dimensions
#
# a positive integer length (parameter named lng)
# a positive integer width (parameter named wdth)
# You will return an array with the size of each of the squares.
#
#   sqInRect(5, 3) should return [3, 2, 1, 1]
#   sqInRect(3, 5) should return [3, 2, 1, 1]
# #Note: lng == wdth as a starting case would be an entirely different problem and the drawing is planned to be interpreted with lng != wdth. See kata, Square into Squares. Protect trees!.
#
# When the initial parameters are so that lng == wdth, the solution [lng] would be the most obvious but not in the spirit of this kata so, in that case, return None/nil/null/Nothing. Return {} with C++.
#
# In that case the returned structure of C will have its sz component equal to 0. (See the "Solution" and "Examples" tabs)
#
# sqInRect(5, 5) should return nil

require 'pry'
require 'rspec'

def sqInRect(lng, wdth)
    return nil if lng == wdth

    arr = []
    total = lng * wdth
    subt = 0
    list = [lng, wdth]

    until subt >= total
      list.sort!

      subt += (list[0] * list[0])

      arr << list[0]

      list[1] = list[1] - list[0]
    end
    return arr
end


p sqInRect(5, 5)
p sqInRect(5, 5) == nil
p sqInRect(5, 3)
p sqInRect(5, 3) == [3, 2, 1, 1]


describe 'list ammount of squares that can fit in a rectangle' do
  it 'returns the side langth of the squares in array' do

    expect(sqInRect(5, 5)).to eq(nil)
    expect(sqInRect(5, 3)).to eq([3, 2, 1, 1])
  end
end

#
# Other options
#

def sqInRect(l, w)
    rects = []
    while l>0 do
      w,l = [w,l].minmax
      rects << w
      l -= w
    end
    rects.size > 1 ? rects : nil
end

def sqInRect(lng, wdth, nil_if_same = true)
  return nil if lng == wdth && nil_if_same

  return [] if lng == 0 || wdth == 0

  min, max = [lng, wdth].minmax

  [min] + sqInRect(min, max - min, false)
end

def sqInRect(lng, wdth, top = true)
  return top ? nil : [lng] if lng == wdth
  min, max = [lng, wdth].sort
  [min] + sqInRect(min, max - min, false)
end

def sqInRect(l, w, results = [])
  return nil if l == w && results == []
  w, l = [w, l].sort
  l == w ? results.push(w) : sqInRect(l - w, w, results.push(w))
end
