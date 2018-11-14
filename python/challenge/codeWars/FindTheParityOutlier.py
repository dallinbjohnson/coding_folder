"""
You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
"""

def find_outlier(integers):
    evenOddDict = {
        "even": [],
        "odd": []
    }
    
    for number in integers:
        if is_even(number):
            evenOddDict["even"].append(number)
        else:
            evenOddDict["odd"].append(number)
    
    if len(evenOddDict["even"]) < len(evenOddDict["odd"]):
        return evenOddDict["even"][0]
    else:
        return evenOddDict["odd"][0]

def is_even(num):
    if num % 2 == 0:
        return True
    else:
        return False 

print([2, 4, 6, 8, 10, 3])
print(3)
print(find_outlier([2, 4, 6, 8, 10, 3]) == 3)
print()

print([2, 4, 0, 100, 4, 11, 2602, 36])
print(11)
print(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11)
print()

print([160, 3, 1719, 19, 11, 13, -21])
print(160)
print(find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160)
print()


#
# Other options
#

def find_outlier1(int):
    odds = [x for x in int if x % 2 != 0]
    evens= [x for x in int if x % 2 == 0]
    return odds[0] if len(odds)<len(evens) else evens[0]


def find_outlier2(integers):
    parity = [n % 2 for n in integers]
    return integers[parity.index(1)] if sum(parity) == 1 else integers[parity.index(0)]