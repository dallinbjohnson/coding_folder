# Takes in a string counts the number of letters. Regardless of chase or spaces outputs the letters and counts for each letter, without duplicats, in a line alphabetised with letter first then count. Example: if input "hello" output "e1h1l2o1"

def letter_count(line)
  line = line.downcase
  line = line.delete(" ")
  arr = line.split("").sort
  lcount = []

  arr = arr.uniq
  arr.each do |l|
    lcount << line.count(l)
  end
  return arr.zip(lcount).flatten.compact.join("")
end


puts letter_count('hello') # e1h1l2o1
puts letter_count('Mighty') # g1h1i1m1t1y1
puts letter_count('Peo ple') #e2l1o1p2
puts letter_count(' Alphab eTised ') #a2b1d1e2h1i1l1p1s1t1
