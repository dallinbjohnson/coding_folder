"""
There is a queue for the self-checkout tills at the supermarket. Your task is write a function to
calculate the total time required for all the customers to check out!

The function has two input variables:

customers: an array (list in python) of positive integers representing the queue. Each integer
represents a customer, and its value is the amount of time they require to check out.
n: a positive integer, the number of checkout tills.
The function should return an integer, the total time required.

EDIT: A lot of people have been confused in the comments. To try to prevent any more confusion:

There is only ONE queue, and
The order of the queue NEVER changes, and
Assume that the front person in the queue (i.e. the first element in the array/list) proceeds to
a till as soon as it becomes free.
The diagram on the wiki page I linked to at the bottom of the description may be useful.
So, for example:

queue_time([5,3,4], 1)
# should return 12
# because when n=1, the total time is just the sum of the times

queue_time([10,2,3,3], 2)
# should return 10
# because here n=2 and the 2nd, 3rd, and 4th people in the
# queue finish before the 1st person has finished.

queue_time([2,3,10], 2)
# should return 12
N.B. You should assume that all the test input will be valid, as specified above.

P.S. The situation in this kata can be likened to the more-computer-science-related idea of a
thread pool, with relation to running multiple processes at the same time:
https://en.wikipedia.org/wiki/Thread_pool
"""

# def queue_time(customers, n):
# 	total = None

# 	if n == 1 or len(customers) == 1:
# 		total = sum(customers)

# 	elif n >= len(customers):
# 		total = max(customers)

# 	elif n < len(customers):
# 		new_list = chunks(customers, n)
# 		new_cust_list = []

# 		for elem in new_list:
# 			new_cust_list.append(max(elem))

# 		print(sum(customers)/n)

# 		total = sum(new_cust_list)

# 	print(total)

# 	return total


# # Create a function called "chunks" with two arguments, l and n:
# def chunks(l, n):
#   # For item i in a range that is a length of l,
#   for i in range(0, len(l), n):
#     # Create an index range for l of n items:
#     yield l[i:i+n]

from multiprocessing import Process, Value, Lock


class Counter(object):
    def __init__(self, initval=0):
        self.val = Value('i', initval)
        self.lock = Lock()

    def increment(self):
        with self.lock:
            self.val.value += 1

    def value(self):
        with self.lock:
            return self.val.value


def func(counter, customer):
    while customer != 0:
        customer -= 1
        counter.increment()


def queue_time(customers, n):
    counter = Counter(0)

    while customers:
        procs = []
        indexs = list(range(0, n))
        for i in range(0, n):
            if i < len(customers):
                procs.append(Process(target=func, args=(counter, customers[i])))

        for i in indexs:
            if i < len(customers):
                customers.pop(i)

        for p in procs:
            p.start()
        for p in procs:
            p.join()

    return counter.value()


print(queue_time([], 1) == 0)
print(queue_time([], 1))
print(queue_time([5], 1) == 5)
print(queue_time([5], 1))
print(queue_time([2], 5) == 2)
print(queue_time([2], 5))
print(queue_time([1, 2, 3, 4, 5], 1) == 15)
print(queue_time([1, 2, 3, 4, 5], 1))
print(queue_time([1, 2, 3, 4, 5], 100) == 5)
print(queue_time([1, 2, 3, 4, 5], 100))
print(queue_time([2, 2, 3, 3, 4, 4], 2) == 9)
print(queue_time([2, 2, 3, 3, 4, 4], 2))

print(queue_time([13, 42, 11, 23, 13, 17, 46, 35, 32, 14, 47, 10, 3], 3) == 124)
print(queue_time([13, 42, 11, 23, 13, 17, 46, 35, 32, 14, 47, 10, 3], 3))
