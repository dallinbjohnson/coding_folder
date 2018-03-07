num = 123
dec = 12.3
num_string = '123'
num_str_letter = '123a'
letter = "a"

print "#{num} - "
p Integer(num).is_a? Integer
print "#{dec} - "
p Integer(dec).is_a? Integer
print "#{num_string} - "
p Integer(num_string).is_a? Integer
print "#{num_str_letter} - "
p Integer(num_str_letter).is_a? Integer rescue p false #Error
print "#{letter} - "
p Integer(letter).is_a? Integer rescue p false #Error

puts "-"*20

print "#{num} - "
p num.is_a?(Numeric)
print "#{dec} - "
p dec.is_a?(Numeric)
print "#{num_string} - "
p num_string.is_a?(Numeric)
print "#{num_str_letter} - "
p num_str_letter.is_a?(Numeric)
print "#{letter} - "
p letter.is_a?(Numeric)

puts "-"*20

def is_number?(obj)
  obj.to_s == obj.to_i.to_s
end
print "#{num} - "
p is_number? num
print "#{dec} - "
p is_number? dec
print "#{num_string} - "
p is_number? num_string
print "#{num_str_letter} - "
p is_number? num_str_letter
print "#{letter} - "
p is_number? letter

puts "-"*20

print "#{num} - "
p Float(num) != nil rescue p false
print "#{dec} - "
p Float(dec) != nil rescue p false
print "#{num_string} - "
p Float(num_string) != nil rescue p false
print "#{num_str_letter} - "
p Float(num_str_letter) != nil rescue p false
print "#{letter} - "
p Float(letter) != nil rescue p false

puts "-"*20

print "#{num} - "
p num !~ /\D/
print "#{dec} - "
p dec !~ /\D/
print "#{num_string} - "
p num_string !~ /\D/
print "#{num_str_letter} - "
p num_str_letter !~ /\D/
print "#{letter} - "
p letter !~ /\D/

puts "-"*20

print "#{num} - "
p num.integer?
print "#{dec} - "
p dec.integer?
print "#{num_string} - "
p num_string.integer? rescue p false
print "#{num_str_letter} - "
p num_str_letter.integer? rescue p false
print "#{letter} - "
p letter.integer? rescue p false

puts "-"*20

print "#{num} - "
p num.is_a? Float
print "#{dec} - "
p dec.is_a? Float
print "#{num_string} - "
p num_string.is_a? Float
print "#{num_str_letter} - "
p num_str_letter.is_a? Float
print "#{letter} - "
p letter.is_a? Float

puts "-"*20


