"""
Is Prime
Define a function isPrime/is_prime() that takes one integer argument and returns true/True or false/False depending on if the integer is a prime.

Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

Example:
bool isPrime(5) = return true

Assumptions:
You can assume you will be given an integer input.
You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).
"""

def is_prime(num):
    if num <= 1:
        return False
        
    i = 2
    while i * i <= num:
        if num % i == 0:
            return False
        i += 1
    
    return True

print("0 is not prime")
print(is_prime(0) == False) # 0 is not prime

print("1 is not prime")
print(is_prime(1) == False) # 1 is not prime

print("2 is prime")
print(is_prime(2) == True) # 2 is prime

#
# Other options
#

def is_prime1(num):
    return num > 1 and not any(num % n == 0 for n in range(2,num))


from math import sqrt
def is_prime2(n):
  return n > 1 and all(n % d for d in xrange(2, int(sqrt(n)) + 1))


def is_prime3(num):
    if not num > 1:
        return False
    divisors = (num % n == 0 for n in range(2, num))
    return not any(divisors)


def is_prime4(num):
    return len([i for i in range(1,num) if num % i == 0]) == 1


def is_prime5(n):
    return False if n == 0 else 2 in [n, 2 ** n % n]