# How to effect every element of any array with .map
p ["1", "23.0", "0", "4"].map {|x| x.to_i}
p ["1", "23.0", "0", "4"].map(&:to_i)

p ("a".."g").to_a.map {|i| i * 2}

# How to turn any array in to an hash
p [1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}
p Hash[[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}]
p Hash[[1, 2.1, 3.33, 0.9].map {|x| [x.to_i, x]}]

p Hash[%w(A dynamic open source programming language).map {|x| [x, x.length]}]

# How to turn a hash in to usable format for a URL by linking each element with a symbol
x = {:a => "foo", :b => "bar"}.map {|a,b| "#{a}=#{b}"}.join('&')
p x
x = {:a => "foo", :b => "bar", :lat => "120.343", :long => "33.212"}.map {|a,b| "#{a}=#{b}"}.join('&')
p x