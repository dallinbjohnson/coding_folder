# use Ruby 2.4.x version

# For debugging purposes like IRB. install pry by running `gem install pry` and uncommenting `require pry`. Then insert binding.pry anywhere in the program. The program will stop at that point and start a pry session.
# https://github.com/pry/pry
# gem install pry
# require "pry" # optional! uncomment!

# For comparing files, uncomment `require 'diffy'`, `def compare_files` method, and the old `def menu_method`. Then install diffy.
# https://github.com/samg/diffy
# on Windows:
# Ensure that you have a working diff on your machine and in your search path.
# There are several options:
# Install Diff::LCS, which includes ldiff. RSpec depends on Diff::LCS so you may already have it installed.
# If you're using RubyInstaller, install the devkit.
# Install unxutils http://sourceforge.net/projects/unxutils
# note that these tools contain diff 2.7 which has a different handling of whitespace in the diff results. This makes Diffy spec tests yielding one fail on Windows.
# Install these two individually from the gnuwin32 project http://gnuwin32.sourceforge.net/
# note that this delivers diff 2.8 which makes Diffy spec pass even on Windows.
# Install the gem by:
# gem install diffy
# require 'diffy' # optional! uncomment!

# C:/PerforceHome/depot/Xerox/Xerox-Europe.RV.TreeHouseI.com/
@prodPath = "Prod/www/French/shared/products-and-services/advanced-production2.aspx" # advanced-production.aspx
@devPath = "Dev/www/French/shared/products-and-services/advanced-production2.aspx"

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

# Compare Directories
def folder_names
	print "what is the folder name you want to be match to? "
	folder1 = gets.chomp.strip

	print "What is the new folder name you want to match the first folder? "
	folder2 = gets.chomp.strip
	puts "\n"

	if File.exists?(folder1) && File.exists?(folder2)
		return folder1, folder2
	else
		folderArr = []

		folderArr << folder1 unless File.exists?folder1
		folderArr << folder2 unless File.exists?folder2

		puts "#{folderArr.join(', ')} dose not exists!"
		puts "\n"

		folder_names()
	end
end

def compare_dir
	folder1, folder2 = folder_names()

	length1 = folder1.length
	length2 = folder2.length

	folderOriginal = Dir.glob("#{folder1}/**/*")
	folderNew = Dir.glob("#{folder2}/**/*")

	folderOriginal.map {|i| i.slice!(0, length1)}
	folderNew.map {|i| i.slice!(0, length2)}

	diffFolders = folderOriginal - folderNew

	if diffFolders.length == folderOriginal.length
		puts "Folders don't match at all."
	elsif diffFolders != []
		puts diffFolders.map {|i| i.prepend(folder1)}
		puts "#{folder2} dose not have these files: "
		puts "Total Files: #{diffFolders.length}"
		puts "\n"
	elsif folderOriginal - folderNew == folderNew - folderOriginal
		puts "Folders match!"
		puts "\n"
	elsif (folderOriginal - folderNew).length < (folderNew - folderOriginal).length
		diffFolders = folderNew - folderOriginal 
		puts diffFolders.map {|i| i.prepend(folder2)}
		puts "The folders match but there are more files in #{folder2} then #{folder1}:"
		puts "Total Files: #{diffFolders.length}"
		puts "\n"
	else
		puts "An Error Occurred"
	end

	menu_method
end

# def compare_files
# 	# file1Path = "Prod/www/French/shared/products-and-services/test.aspx"
# 	# file2Path = "Dev/www/French/shared/products-and-services/test.aspx"

# 	file1 = File.open(@prodPath, "r"){ |file| file.read }
# 	file2 = File.open(@devPath, "r"){ |file| file.read }

# 	file1 = file1.strip.squeeze
# 	file2 = file2.strip.squeeze

# 	result = (file1).casecmp?(file2)

# 	if result == true
# 		puts "The Files Match!"
# 		puts "\n"
# 	else
# 		puts Diffy::Diff.new(file2, file1).to_s(:color)
# 		puts "\n"

# 		puts "The files don't match:"
# 		puts "\n"
# 	end

# 	menu_method()
# end

# Backpack Links
def check_backpack_links(allBackpackProd)
	contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	contentsDev = File.open(@devPath, "r"){ |file| file.read }

	allBackpackDev = []

	allBackpackProd.each do |link|
		text = link.scan(/LinkText="(.*?)"/i).flatten.join
		deep_link = link.scan(/Destination="(.*?)"/i).flatten.join

		@pattern = /(\.|\*|\/|\-|\\|\(|\)|\$|\+|\^|\?|\!|\~|\`|\&|\;|\:|\=|\_)/
		text = text.gsub(@pattern){|i| "\\" + i }

		backpackDev = contentsDev.scan(/<a.*?href="#backpacklink".*?>\n?#{text}\n?<.*?a>/i).uniq
		backpackDev = contentsDev.scan(/<a(?!.*?class=|.*?target=).*?>\n?#{text}\n?<.*?a>/i).uniq if backpackDev == []
		backpackDev = contentsDev.scan(/<ResellerViewControls:BackpackLink.*?Destination="#{deep_link}".*?LinkText="#{text}".*?\/>|<ResellerViewControls:BackpackLink.*?LinkText="#{text}".*?Destination="#{deep_link}".*?\/>/i) if backpackDev == []

		comment = contentsDev.scan(/<!--\s?(<.*?>)\s?-->|<%--\s?(<.*?>)\s?--%>/m).flatten
		comment.delete(nil)
		backpackDev = backpackDev - comment

		jump = contentsDev.scan(/<ul\s?class.*?jump-menu.*?ul>/m).flatten.join

		allBackpackDev << backpackDev[0] if backpackDev[0] != nil && comment.include?(backpackDev[0]) == false && jump.include?(backpackDev[0]) == false
		# allBackpackProd.delete(link)
	end
	allBackpackDev.flatten!

	# binding.pry

	if allBackpackDev.length == allBackpackProd.length
		puts "There is #{allBackpackDev.length} matching backpack links in both files."
		puts "Dev: #{allBackpackDev.length} Prod: #{allBackpackProd.length}"

		# return allBackpackDevd
	elsif allBackpackDev.length < allBackpackProd.length
		puts "There is #{allBackpackProd.length - allBackpackDev.length} less link(s) or link(s) text in Dev that doesn't match Prod."
		puts "Dev: #{allBackpackDev.length} Prod: #{allBackpackProd.length}"

		answer = prompt("y", "Would you like to continue or go back to to the menu?")
		puts "\n"

		if answer.downcase == "y"
			return allBackpackDev
		else
			menu_method()
		end
	elsif allBackpackDev.length > allBackpackProd.length
		puts "There is #{allBackpackDev.length - allBackpackProd.length} to many link(s) in Dev."
		puts "Dev: #{allBackpackDev.length} Prod: #{allBackpackProd.length}"

		menu_method()
	end
end

def backpack_links
	contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	contentsDev = File.open(@devPath, "r"){ |file| file.read }

	allBackpackProd = contentsProd.scan(/<ResellerViewControls:BackpackLink.*?(?:<img.*?\/>.*?)?\/>/i)

	check_backpack_links(allBackpackProd)

	allBackpackProd.each do |link|
		contentsDev = File.open(@devPath, "r"){ |file| file.read }

		app = link.scan(/TargetSystem="(.*?)"/i).flatten.join
		target_url = link.scan(/TargetUrl="(.*?)"/i).flatten.join
		text = link.scan(/LinkText="(.*?)"/i).flatten.join
		deep_link = link.scan(/Destination="(.*?)"/i).flatten.join

		text = text.gsub(@pattern){|i| "\\" + i }

		# binding.pry

		backpackDev = contentsDev.scan(/<a.*?href="#backpacklink".*?>\n?#{text}\n?<.*?a>/i).uniq
		backpackDev = contentsDev.scan(/<a(?!.*?class=|.*?target=).*?>\n?#{text}\n?<.*?a>/i).uniq if backpackDev == []
		backpackDev = contentsDev.scan(/<ResellerViewControls:BackpackLink.*?Destination="#{deep_link}".*?LinkText="#{text}".*?\/>|<ResellerViewControls:BackpackLink.*?LinkText="#{text}".*?Destination="#{deep_link}".*?\/>/i) if backpackDev == []

		comment = contentsDev.scan(/<!--\s?(<.*?>)\s?-->|<%--\s?(<.*?>)\s?--%>/m).flatten
		comment.delete(nil)
		backpackDev = backpackDev - comment

		jump = contentsDev.scan(/<ul\s?class.*?jump-menu.*?ul>/m).flatten.join

		text = link.scan(/LinkText="(.*?)"/i).flatten.join

		# binding.pry

		if backpackDev[0] != nil && comment.include?(backpackDev[0]) == false && jump.include?(backpackDev[0]) == false
			if deep_link != ""
				new_contents = contentsDev.sub("#{backpackDev[0]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' deep-link='#{deep_link}' href='#'>#{text}</a>")

				# To write changes to the file, use:
				File.open(@devPath, "w") {|file| file.puts new_contents }
			else
				new_contents = contentsDev.sub("#{backpackDev[0]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' href='#'>#{text}</a>")

				# To write changes to the file, use:
				File.open(@devPath, "w") {|file| file.puts new_contents }
			end
		end
	end

	# allBackpackProd.each do |link|
	# 	text = link.scan(/LinkText="(.*?)"/i).flatten.join

	# 	backpackDev = contentsDev.scan(/<a.*?>\n?#{text}\n?<.*?a>/i)

	# 	backpackDev = contentsDev.scan(/<ResellerViewControls:BackpackLink.*?LinkText="#{text}".*?>/i) if backpackDev == []

	# 	comment = contentsDev.scan(/<!--\s?(<.*?>)\s?-->|<%--\s?(<.*?>)\s?--%>/m).flatten
	# 	comment.delete(nil)

	# 	backpackDev = backpackDev - comment

	# 	@backpackProd = contentsProd.scan(/<ResellerViewControls:BackpackLink.*?LinkText="#{text}".*?>/i)
	# 	count = 0

	# 	binding.pry

	# 	backpackDev.each do |link1|
	# 		# contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	# 		# contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	# 		contentsDev = File.open(@devPath, "r"){ |file| file.read }

	# 		binding.pry

	# 		app = @backpackProd[count].scan(/TargetSystem="(.*?)"/i).flatten.join
	# 		target_url = @backpackProd[count].scan(/TargetUrl="(.*?)"/i).flatten.join
	# 		text1 = @backpackProd[count].scan(/LinkText="(.*?)"/i).flatten.join
	# 		deep_link = @backpackProd[count].scan(/Destination="(.*?)"/i).flatten.join

	# 		if deep_link != ""
	# 		  new_contents = contentsDev.sub(/#{link1}/i, "<a class='backpack' app='#{app}' target-url='#{target_url}' deep-link='#{deep_link}' href='#'>#{text1}</a>")

	# 		  # To write changes to the file, use:
	# 		  File.open(@devPath, "w") {|file| file.puts new_contents }
	# 		else
	# 			new_contents = contentsDev.sub(/#{link1}/i, "<a class='backpack' app='#{app}' target-url='#{target_url}' href='#'>#{text1}</a>")

	# 		  # To write changes to the file, use:
	# 		  File.open(@devPath, "w") {|file| file.puts new_contents }
	# 		end

	# 		# allBackpackProd.delete(backpackProd[count])
	# 		@backpackProd.delete(@backpackProd[count])
	# 		# count += 1
	# 	end
	# end

	puts "Changed all Backpack links if the links text match!"
	puts "\n"

	menu_method()
end

# Template Languages
def templates_language
	contentsProd = File.open(@prodPath, "r"){ |file| file.read }

	contentsDev = File.open(@devPath, "r"){ |file| file.read }

	lang = contentsProd.scan(/_(.*?).master" %>/i).flatten.uniq.join

	unless lang == ""
		new_contents = contentsDev.gsub(/(?!-sub_1column)-.*?.master/i, "-#{lang}.master")

		# To write changes to the file, use:
		File.open(@devPath, "w") {|file| file.puts new_contents }
	end

	# File.write(@devPath, contentsDev.gsub(/-*.master/, "-#{lang}.master"))

	puts "Success! Changed template language."
	puts "\n"

	menu_method()
end

def exit_program
	exit
end

# def menu_method
# 	@menu = ["Compare Folders", "Backpack Links", "Template Language","Compare Files", "Exit"]
# 	option_num = 0

# 	puts "Menu:"
# 	@menu.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

# 	@menu_options = prompt("0", "Pick a number from the Menu:").to_i
# 	puts "\n"

# 	case @menu_options
# 	when 0
# 		compare_dir()
# 	when 1
# 		backpack_links()
# 	when 2
# 		templates_language()
# 	when 3
# 		compare_files()
# 	when 4
# 		exit_program()
# 	end
# end
# menu_method()

def menu_method
	@menu = ["Compare Folders", "Backpack Links", "Template Language", "Exit"]
	option_num = 0

	puts "Menu:"
	@menu.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

	@menu_options = prompt("0", "Pick a number from the Menu:").to_i
	puts "\n"

	case @menu_options
	when 0
		compare_dir()
	when 1
		backpack_links()
	when 2
		templates_language()
	when 3
		exit_program()
	end
end

menu_method()

