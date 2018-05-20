require 'mechanize'
require "pry"

mechanize = Mechanize.new

page = mechanize.get('https://www.textfixer.com/html/html-character-encoding.php')

form = page.forms.first

form['oldText'] = 'Ċ'

binding.pry

puts form['newCode']