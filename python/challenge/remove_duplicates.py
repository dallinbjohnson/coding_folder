mylist = ['John', 'Bryce', 'Dallin', 'Henry', 'John', 'henry']


newlist = sorted(set(mylist))
print(newlist)


newlist = sorted(set(map(str.title, mylist)))
print(newlist)


newlist = sorted({item.title() for item in mylist})
print(newlist)


newlist = []
[newlist.append(item) for item in mylist if item.lower() not in map(str.lower, newlist)]

print(sorted(newlist))