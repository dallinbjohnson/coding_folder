first_name = lambda { |first, last| first + " " + last }

p first_name["Dallin", "Johnson"]

first_name1 = ->(first, last) { first + " " + last }

p first_name1.call("Dallin", "Johnson")