class Thing
end

class That < Thing
end

p check = That.ancestors

p check.include?(Thing)
p check[0].class