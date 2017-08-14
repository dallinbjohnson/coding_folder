@user = [[40.37870729999999, -111.8183084], [40.2788306, -111.7151968], [40.432616, -111.8937064], [32.68385, -117.1138716], [40.4280146, -111.8963901], nil, [40.3650388, -111.7549682], nil, [40.554905, -111.91479], [40.427846, -111.896014], [40.427846, -111.896014]]

@key = ["latitude", "longitude"]

@user = @user.flatten!

# p @user.length

# x = 0
# @key.each do |a|
# 	@user.insert(x, a)
# 	x += 2
# end

hash = Hash[@user.zip(@key.cycle)]

p hash
p hash = hash.invert

# p @key
# p @user

