import re


def longest_word(sentence):
	word_list = re.sub('[^\w\s]+', '', sentence).split()

	longest_word_list = [word for word in word_list if len(word) == len(max(word_list, key=len))]
	return longest_word_list

sent = input("Type a sentence: ")

print('\nThe longest words in your sentence are:')
print(*longest_word(sent), sep = "\n")