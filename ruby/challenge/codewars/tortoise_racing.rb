# Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A, and furthermore has not finished her cabbage.
#
# When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour. How long will it take B to catch A?
#
# More generally: given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?
#
# The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds (don't worry for fractions of second).
#
# If v1 >= v2 then return nil, nothing, null, None or {-1, -1, -1} for C++, C, Go, Nim.
#
# Examples:
# race(720, 850, 70) => [0, 32, 18]
# race(80, 91, 37)   => [3, 21, 49]

require 'pry'
require 'rspec'

def race(v1, v2, g)
  return nil if v1 >= v2
  total = []
  big = [v1, v2].max
  small = [v1, v2].min
  dif = big - small
  time = g/(dif).to_f

  hours = time.divmod(1)
  total << hours[0]
  min = (hours[1] * 60).divmod(1)
  total << min[0]
  total << sec = (min[1] * 60).round

  # total << hours = time.to_i
  # total << min = ((time - hours) * 60).to_i
  # total << sec = ((((time - hours) * 60).modulo(1)) * 60).round
  if sec == 60
    total[2] = 0
    total[1] += 1
  end

  return total
end

p race(720, 850, 70) == [0, 32, 18]
p race(80, 91, 37) == [3, 21, 49]
p race(80, 100, 40) == [2, 0, 0]
p race(80, 80, 40) == nil

describe 'How long it will take one tortois to catch up to the other tortois' do
  it 'returns an array of hour min sec [h, m, s]' do

    expect(race(720, 850, 70)).to eq([0, 32, 18])
  end
end

#
# Other options
#

def race(v1, v2, lead)
  return nil if v1 > v2
  time_in_seconds = (lead.fdiv(v2 - v1) * 3600).to_i
  hour = (time_in_seconds / 3600)
  min  = (time_in_seconds / 60 ) % 60
  sec  =  time_in_seconds % 60
  [hour,min,sec]
end

def race(v1, v2, g)
  sec = (g * 3600 / (v2 - v1))
  [sec / 3600,  (sec / 60) % 60, sec % 60] if v2 > v1
end

def race(v1, v2, g)
  return nil if v1>=v2
  r = g*3600/(v2-v1)
  [r/3600, r%3600/60, r%60]
end

def race(v1, v2, g)
  d = v2 - v1
  if (d <= 0) then return nil end
  h = g / d
  r = g % d
  mn = r * 60 / d
  s = (r * 60 % d) * 60 / d
  [h, mn, s]
end

def race(v1, v2, g)
  return if v1 >= v2
  seconds = g.fdiv(v2-v1) * 3600
  minutes, seconds = seconds.divmod(60)
  [*minutes.divmod(60), seconds.floor]
end

def race(v1, v2, g)
  return nil if v1 >= v2

  vd = v2 - v1
  d = (g / vd.to_f) * 3600
  t = Time.at(d).utc

  [t.hour, t.min, t.sec]
end
