require "pry"

require 'rouge'

# gem install nokogiri
require 'nokogiri'
require 'open-uri'

require 'oga'

# C:/PerforceHome/depot/Xerox/Xerox-Europe.RV.TreeHouseI.com/
@prodPath = "Prod/www/French/shared/products-and-services/advanced-production.aspx" # advanced-production.aspx
@devPath = "Dev/www/French/shared/products-and-services/advanced-production.aspx"

def prompt(default, text)
  if default == ""
  	print(text + ' ')
  else
  	print(text + ' Default[' + default + '] ')
  end
  result = gets.chomp.strip

  prompt(default,text) if result == "" && default == ""
  return result.empty? ? default : result
end

def color_method(text)
	source = "#{text}"
	theme = Rouge::Themes::IgorPro.new
	formatter = Rouge::Formatters::Terminal256.new(theme)
	lexer = Rouge::Lexers::Shell.new
	return formatter.format(lexer.lex(source))
end

############################################################################

# contentsProd = Nokogiri::HTML(open(@prodPath))
# contentsDev = Nokogiri::HTML(open(@devPath))

# allBackpackProd = contentsProd.css("backpacklink")
# allBackpackDev = contentsDev.css("a[href='#backpacklink']")

# contentsProd.css("backpacklink").each do |prodFullLink|
# 	puts (prodFullLink.parent).previous_element # .gsub(/[^\d\w]/m, "")
# 	puts "#"*100
# 	# puts prodFullLink['targetsystem']
# 	# puts prodFullLink['targeturl']
# 	# puts prodFullLink['destination']
# 	# puts prodFullLink['linktext']
# 	# puts "#"*100
# end
# # puts "#"*100

# contentsDev.css("a[href='#backpacklink']").each do |devFullLink|
# 	puts (devFullLink.parent).previous_element # .gsub(/[^\d\w]/m, "")
# 	puts "*"*100
# 	# puts devFullLink.text
# end

# (allBackpackProd.length).times do |i|
# 	puts allBackpackProd[i]
# 	puts allBackpackDev[i]
# 	puts "#"*100
# end

############################################################################

# contentProd = File.readlines @prodPath
# contentProd.each_with_index{|line, i| puts "#{i+1}: #{line}"}

# contentDev = File.readlines @devPath
# contentDev.each_with_index{|line, i| puts "#{i+1}: #{line}"}

# allBackpackProd = contentProd.grep(/<ResellerViewControls:BackpackLink/)
# allBackpackDev = contentDev.grep(/<a.*?#backpack/)

############################################################################

def check_backpack_links
	# contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	# contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	# contentsDev = File.open(@devPath, "r"){ |file| file.read }
	# contentsDev = contentsDev.gsub(/<!--.*?-->|<%--.*?--%>/m, "")

	# allBackpackProd = contentsProd.scan(/<ResellerViewControls:BackpackLink.*?(?:<img.*?\/>.*?)?\/>/i)
	# allBackpackDev = contentsDev.scan(/<a.*?href="#backpacklink".*?>\n?.*?\n?<.*?a>/i)
	# allBackpackDev << contentsDev.scan(/<ResellerViewControls:BackpackLink.*?(?:<img.*?\/>.*?)?\/>/i)
	# allBackpackDev = contentsDev.scan(/<a(?!.*?class=|.*?target=).*?>\n?.*?\n?<.*?a>/i) if allBackpackDev == []
	# allBackpackDev.flatten!

	# contentsProd = Nokogiri::HTML(open(@prodPath))
	# contentsDev = Nokogiri::HTML(open(@devPath))

	contentsProd = Oga.parse_xml(File.open(@prodPath))
	contentsDev = Oga.parse_xml(File.open(@devPath))

	# binding.pry

	allBackpackProd = []
	allBackpackDev = []

	contentsProd.css("BackpackLink").each do |prodFullLink|
		allBackpackProd << prodFullLink
		# puts prodFullLink.to_xml
		# puts "*"*100
	end
	# puts "#"*100

	contentsDev.css("a[href='#backpacklink']").each do |devFullLink|
		allBackpackDev << devFullLink
		# puts devFullLink.to_xml
		# puts "*"*100
	end
	# puts "#"*100
	contentsDev.css("BackpackLink").each do |devFullLink|
		allBackpackDev << devFullLink
		# puts devFullLink.to_xml
		# puts "*"*100
	end
	# puts "#"*100

	binding.pry

	allBackpackProdOR = []
	allBackpackDevOR = []

	allBackpackDev.each_with_index do |linkDev, i1|
		textDev = linkDev.text.gsub(/[^\d\w]/m, "")
		textDev = linkDev["LinkText"].gsub(/[^\d\w]/m, "") if textDev == ""
		# binding.pry

		allBackpackProd.each_with_index do |linkProd, i2|
			textProd = linkProd["LinkText"].gsub(/[^\d\w]/m, "")
			binding.pry

			allBackpackProdOR << linkProd if textProd == textDev && allBackpackProdOR.include?(linkProd) == false
			allBackpackDevOR << linkDev if textProd == textDev && allBackpackDevOR.include?(linkDev) == false
		end
	end

	binding.pry

	if allBackpackDev.length == allBackpackProd.length && allBackpackDevOR.length == allBackpackProd.length
		puts "There is #{allBackpackDev.length} total backpack links in both files."
		puts "Dev: #{allBackpackDev.length} Prod: #{allBackpackProd.length}"
		puts "\n"

		return allBackpackProdOR, allBackpackDevOR
	else
		puts "Prod total: #{allBackpackProd.length} Dev total: #{allBackpackDev.length}"
		puts "\n"

		allBackpackProdDM = allBackpackProd - allBackpackProdOR
		allBackpackDevDM = allBackpackDev - allBackpackDevOR

		if allBackpackProdDM != []
			puts "Prod Links that don't match:"
			allBackpackProdDM.each {|link| puts color_method(link)}
			puts "\n"
		end
		if allBackpackDevDM != []
			puts "Dev Links that don't match:"
			allBackpackDevDM.each {|link| puts color_method(link)}
			puts "\n"
		end

		puts "There is #{allBackpackDevOR.length} matching backpack links in both files."
		puts "Prod: #{allBackpackProdOR.length} Dev: #{allBackpackDevOR.length}"

		answer = prompt("y", "Would you like to continue or go back to to the menu?")
		puts "\n"

		if answer.downcase == "y"
			return allBackpackProdOR, allBackpackDevOR
		else
			menu_method()
		end
	end
end

def backpack_links
	# contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	# contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	# contentsDev = File.open(@devPath, "r"){ |file| file.read }

	allBackpackProdOR, allBackpackDevOR = check_backpack_links()

	allBackpackDevOR.each_with_index do |link, i|
		contentsDev = Nokogiri::HTML(open(@devPath))

		app = allBackpackProdOR[i]['targetsystem']
		target_url = allBackpackProdOR[i]['targeturl']
		deep_link = allBackpackProdOR[i]['destination']
		text = allBackpackProdOR[i]['linktext']

		# binding.pry

    if deep_link != ""
			new_node = "<a class='backpack' app='#{app}' target-url='#{target_url}' deep-link='#{deep_link}' href='#'>#{text}</a>"

			# binding.pry

			contentsDev.css(link.css_path).each do |devFullLink|
				devFullLink.replace new_node
			end

			File.open(@devPath, 'w') {|f| f.write(contentsDev.to_html) }
		else
			new_node = "<a class='backpack' app='#{app}' target-url='#{target_url}' href='#'>#{text}</a>"

			# binding.pry

			contentsDev.css(link.css_path).each do |devFullLink|
				devFullLink.replace new_node
			end

			File.open(@devPath, 'w') {|f| f.write(contentsDev.to_html) }
		end
	end

	# allBackpackProdOR.each_with_index do |link, i|
	# 	contentsDev = File.open(@devPath, "r"){ |file| file.read }

	# 	app = link.scan(/TargetSystem="(.*?)"/i).flatten.join
	# 	target_url = link.scan(/TargetUrl="(.*?)"/i).flatten.join
	# 	text = link.scan(/LinkText="(.*?)"/i).flatten.join
	# 	deep_link = link.scan(/Destination="(.*?)"/i).flatten.join

	# 	if deep_link != ""
	# 		new_contents = contentsDev.sub("#{allBackpackDevOR[i]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' deep-link='#{deep_link}' href='#'>#{text}</a>")

	# 		# To write changes to the file, use:
	# 		File.open(@devPath, "w") {|file| file.puts new_contents }
	# 	else
	# 		new_contents = contentsDev.sub("#{allBackpackDevOR[i]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' href='#'>#{text}</a>")

	# 		# To write changes to the file, use:
	# 		File.open(@devPath, "w") {|file| file.puts new_contents }
	# 	end
	# end

	puts "Changed all Backpack links if the links text match!"
	puts "\n"

	menu_method()
end

backpack_links()
