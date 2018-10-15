def sum(num_one, num_two):
  print(num_one + num_two)
sum(2, 4)

name = "Dallin Johnson"
post_count = 42

print(name)
print(post_count)
print()

#######################################################

###################### Booleans
test = True
test = False

###################### Numbers
product_id = 123 # int
sale_price = 14.99 # float not super accurate like Decimal
tip_percentage = 1/5
new_product = 150

print(sale_price + new_product)
print()

print('Addition')
print(f"100 + 42 = {100 + 42}")
print('--------------------------')

print('Subtraction')
print(f"100 - 42.3 = {100 - 42.3}")
print('--------------------------')

print('Division')
print(f"100 / 42 = {100 / 42}")
print(f"100 / 38 = {100 / 38}")
print('--------------------------')

print('Floor Division')
print(f"100 // 42 = {100 // 42}")
print(f"100 // 38 = {100 // 38}")
print('--------------------------')

print('Multiplication')
print(f"100 * 38 = {100 * 38}")
print('--------------------------')

print('Modulus')
print(f"2 % 2 = {2 % 2}")
print(f"5 % 2 = {5 % 2}")
print('--------------------------')

print('Exponents')
print(f"10 ** 2 = {10 ** 2}")
print('--------------------------')
print()

# Order of Operations
# (), **, * or /, + or -

calculation = 8 + 2 * 5 - (9 + 2) ** 2
print("Order of Operations")
print(f"8 + 2 * 5 - (9 + 2) ** 2 = {calculation}")
print()

# Reassignment
print ("Reassignment")
total = 100
total += 10
total -= 10
total *= 10
total /= 10
total //= 10
total **= 2
total %= 2

print(total)
print()

# Decimal
print("Decimal")
product_cost = 88.40
commision_rate = 0.08
pty = 450

product_cost += (commision_rate * product_cost)
print(product_cost * pty) # 42962.4 Float

from decimal import Decimal
product_cost = Decimal(88.40)
commision_rate = Decimal(0.08)
pty = 450

product_cost += (commision_rate * product_cost)
print(product_cost * pty) # 42962.40000000000282883716451 Decimal

# Manual conversion
print("- Manual conversion")
product_cost = 88.40
commision_rate = 0.08
pty = 450

print(product_cost)
print(int(product_cost))
print(Decimal(product_cost))
print(pty)
print(float(pty))
print(complex(commision_rate))
print()

# Math Functions
import math
loss = -20.25
product_cost = 89.99

print(loss)
print(abs(loss))
print(product_cost)
print(math.floor(product_cost))
print(math.ceil(product_cost))
print(math.floor(abs(loss)))
print(round(product_cost))
print(math.sqrt(product_cost))
print(math.pow(5, 2))
print(5 ** 2)
print ()

###################### Strings
sentance = "The quick brown fox jumped over the lazy dog"
sentance.upper()
sentance.lower()
sentance.capitalize()
sentance.title()
sentance_two = 'That is my dog\'s bowl'
sentance_three = "That is my dog's bowl"
sentance_four = "Dallin said \"That is my dog's bowl\""

print(sentance)
print(sentance[0])
print(sentance[0:2])
print(sentance[3:])

content = """
This is a multiline string. This is a multiline string. This is a multiline string. This is a multiline string.
This is a multiline string. This is a multiline string. This is a multiline string. This is a multiline string.
This is a multiline string. This is a multiline string. This is a multiline string. This is a multiline string.
""".strip()

print(content)
print(repr(content))
print()

name = "Dallin"
greeting = f'Hi {name}'
greeting = f'Hi {name} {{bracket}}'

print(greeting)

product = 'Python e-learning course'

email_content = f"""
Hi {name},
Thank you for purchasing {product}.
Regards,
Sales Team
""".strip()

name = "Ty"
product = 'Ruby e-learning course'

email_content = """
Hi {0},
Thank you for purchasing {1}.
Regards,
{2}
""".strip().format(name, product, 'Sales Team')

print(email_content)
print()

query = sentance.find('quick')
query = sentance.index('quick') # if index does not find substring it errors out.
query = 'quick' in sentance

if 'quick' in sentance:
  print(query)

print()

import re
sentance = "The quick brown fox jumped over the lazy dog"
sentance = sentance.replace("quick", 'slow')
sentance = re.sub(r"g", 'g!', sentance)

print(sentance)
print()

url = 'https://google.com'

print(url.strip("https://"))
print(url.lstrip("https://"))
print(url.rstrip(".com"))
print()

heading = "Python: An Introduction"
header, _, subheader = heading.partition(': ') # Only returns 3 values can't do more or less. returns Tuples.

print(header)
print(_) # use "_" if its something you don't want to keep.
print(subheader)

tags = 'Python,coding,programming,development'
tag_list = tags.split(",")
tag_list1 = tags.split()
tag_list2 = list(tags)

print(tag_list)
print(tag_list1)
print(tag_list2)
print()

api_data = "5"
greeting = "hi"

print(api_data.isalpha())
print(greeting.isalpha()) # if there is spaces in the string then it will be false.
print(api_data.isnumeric())
print(greeting.isnumeric())
print()

###################### Bytes and byte arrays
###################### None
###################### Lists
###################### Tuples
###################### Sets
###################### Dictionaries

###################### Commenting ##########################

# single line & inline

"""
multiline commment
multiline commment
multiline commment
"""