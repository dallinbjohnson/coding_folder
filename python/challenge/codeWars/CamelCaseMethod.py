"""
Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java) for strings. All words must have their first letter capitalized without spaces.

For instance:

camelcase("hello case") => HelloCase
camelcase("camel case word") => CamelCaseWord
"""
import pprint


def camel_case(string):
    return string.title().replace(" ", "")

pprint.pprint("test case")
pprint.pprint("TestCase")
pprint.pprint(camel_case("test case") == "TestCase")
print()

pprint.pprint("camel case method")
pprint.pprint("CamelCaseMethod")
pprint.pprint(camel_case("camel case method") == "CamelCaseMethod")
print()

pprint.pprint("say hello ")
pprint.pprint("SayHello")
pprint.pprint(camel_case("say hello ") == "SayHello")
print()

pprint.pprint(" camel case word")
pprint.pprint("CamelCaseWord")
pprint.pprint(camel_case(" camel case word") == "CamelCaseWord")
print()

pprint.pprint("")
pprint.pprint("")
pprint.pprint(camel_case("") == "")
print()

#
# Other options
#

def camel_case1(string):
    return ''.join(string.title().split())


def camel_case2(string):
    return ''.join([i.capitalize() for i in string.split()])