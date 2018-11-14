"""
Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

Rules for a smiling face:
-Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
-A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
-Every smiling face must have a smiling mouth that should be marked with either ) or D.
No additional characters are allowed except for those mentioned.
Valid smiley face examples:
:) :D ;-D :~)
Invalid smiley faces:
;( :> :} :] 

Example cases:

countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;

Note: In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same

Happy coding!
"""

import re
import pprint

def count_smileys(arr):
    r = re.compile("[:;][-~]?[)D]")
    newlist = list(filter(r.match, arr))
    
    return len(newlist)#the number of valid smiley faces in array/list


pprint.pprint([])
print(0)
print(count_smileys([]) == 0)
print()

pprint.pprint([':D',':~)',';~D',':)'])
print(4)
print(count_smileys([':D',':~)',';~D',':)']) == 4)
print()

pprint.pprint([':)',':(',':D',':O',':;'])
print(2)
print(count_smileys([':)',':(',':D',':O',':;']) == 2)
print()

pprint.pprint([';]', ':[', ';*', ':$', ';-D'])
print(1)
print(count_smileys([';]', ':[', ';*', ':$', ';-D']) == 1)

#
# Other options
#

from re import findall
def count_smileys1(arr):
    return len(list(findall(r"[:;][-~]?[)D]", " ".join(arr))))


import re
def count_smileys2(arr):
    smiley = re.compile(r"[:;][-~]?[)D]")
    return sum(bool(re.match(smiley, el)) for el in arr)


import re
def count_smileys3(arr):
    return sum(1 for s in arr if re.match(r'\A[:;][-~]?[)D]\Z',s))


import re
def count_smileys4(arr):
    return sum(1 for _ in re.finditer(r"[:;][-~]?[)D]", " ".join(arr)))


valid = ":) :D :-) :-D :~) :~D ;) ;D ;-) ;-D ;~) ;~D".split()
def count_smileys5(arr):
    return sum(face in valid for face in arr)


def count_smileys6(arr):
    arr = [i.replace('-', '').replace('~', '') for i in arr]
    return sum(arr.count(i) for i in [':)', ':D', ';D', ';)'])