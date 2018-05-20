# use Ruby 2.4.x version

# For debugging purposes like IRB. install pry by running `gem install pry` and uncommenting `require pry`. Then insert binding.pry anywhere in the program. The program will stop at that point and start a pry session.
# https://github.com/pry/pry
# gem install pry
require "pry" # optional! uncomment!

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
require 'diffy' # optional! uncomment!

# https://github.com/jneen/rouge
# gem install rouge
require 'rouge'

# C:/PerforceHome/depot/Xerox/Xerox-Europe.RV.TreeHouseI.com/
@prodPath = "production-print-solutions-tools.aspx" # advanced-production.aspx
@devPath = "production-print-solutions-tools1.html"

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
	theme = Rouge::Themes::IgorPro.new # IgorPro or ThankfulEyes
	formatter = Rouge::Formatters::Terminal256.new(theme)
	lexer = Rouge::Lexers::Shell.new
	return formatter.format(lexer.lex(source))
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

def compare_files
	# file1Path = "Prod/www/French/shared/products-and-services/test.aspx"
	# file2Path = "Dev/www/French/shared/products-and-services/test.aspx"

	file1 = File.open(@prodPath, "r"){ |file| file.read }
	file2 = File.open(@devPath, "r"){ |file| file.read }

	file1 = file1.strip.squeeze
	file2 = file2.strip.squeeze

	result = (file1).casecmp?(file2)

	if result == true
		puts "The Files Match!"
		puts "\n"
	else
		puts Diffy::Diff.new(file2, file1).to_s(:color)
		puts "\n"

		puts "The files don't match:"
		puts "\n"
	end

	menu_method()
end

# Backpack Links
def check_backpack_links
	contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	contentsDev = File.open(@devPath, "r"){ |file| file.read }
	contentsDev = contentsDev.gsub(/<!--.*?-->|<%--.*?--%>/m, "")

	allBackpackProd = contentsProd.scan(/<ResellerViewControls:BackpackLink.*?(?:<img.*?\/>.*?)?\/>/i)

	allBackpackDev = contentsDev.scan(/<a\shref="#backpacklink".*?>\n?.*?\n?<\/a>/i)
	allBackpackDev << contentsDev.scan(/<ResellerViewControls:BackpackLink.*?(?:<img.*?\/>.*?)?\/>/i)
	allbackpackDev = contentsDev.scan(/<a\s.*?(?!.*?class=|.*?target=).*?>\n?.*?\n?<\/a>/i) if allBackpackDev == []

	allBackpackDev.flatten!

	# allBackpackDev.map!(&:strip)

	allBackpackProdOR = []
	allBackpackDevOR = []

	allBackpackDev.each_with_index do |linkDev, i1|
		textDev = linkDev.scan(/<a.*?>(.*?)<\/a>/m).flatten.join.gsub(/[^\d\w]/m, "")
		textDev = linkDev.scan(/LinkText="(.*?)"/m).flatten.join.gsub(/[^\d\w]/m, "") if linkDev.include?("ResellerViewControls")


		allBackpackProd.each_with_index do |linkProd, i2|
			textProd = linkProd.scan(/LinkText="(.*?)"/m).flatten.join.gsub(/[^\d\w]/m, "")

			allBackpackProdOR << "#{i2 + 1}: #{linkProd}" if textProd == textDev && allBackpackProdOR.include?("#{i2 + 1}: #{linkProd}") == false
			allBackpackDevOR << "#{i1 + 1}: #{linkDev}" if textProd == textDev && allBackpackDevOR.include?("#{i1 + 1}: #{linkDev}") == false
		end
	end

	allBackpackProdOR.each {|link| link.gsub!(/^\d*: /, "")}
	allBackpackDevOR.each {|link| link.gsub!(/^\d*: /, "")}

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
	contentsProd = File.open(@prodPath, "r"){ |file| file.read }
	contentsProd = contentsProd.gsub(/<!--.*?-->|<%--.*?--%>/m, "")
	contentsDev = File.open(@devPath, "r"){ |file| file.read }

	allBackpackProdOR, allBackpackDevOR = check_backpack_links()

	allBackpackProdOR.each_with_index do |link, i|
		contentsDev = File.open(@devPath, "r"){ |file| file.read }

		app = link.scan(/TargetSystem="(.*?)"/i).flatten.join
		target_url = link.scan(/TargetUrl="(.*?)"/i).flatten.join
		text = link.scan(/LinkText="(.*?)"/i).flatten.join
		deep_link = link.scan(/Destination="(.*?)"/i).flatten.join

		comment = contentsDev.scan(/<!--\s?(<.*?>)\s?-->|<%--\s?(<.*?>)\s?--%>/m).flatten.join
		jump = contentsDev.scan(/<ul\s?class.*?jump-menu.*?ul>/m).flatten.join

		if jump.include?(allBackpackDevOR[i]) == false && comment.include?(allBackpackDevOR[i]) == false
			if deep_link != ""
				new_contents = contentsDev.sub("#{allBackpackDevOR[i]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' deep-link='#{deep_link}' href='#'>#{text}</a>")

				# To write changes to the file, use:
				File.open(@devPath, "w") {|file| file.puts new_contents }
			else
				new_contents = contentsDev.sub("#{allBackpackDevOR[i]}", "<a class='backpack' app='#{app}' target-url='#{target_url}' href='#'>#{text}</a>")

				# To write changes to the file, use:
				File.open(@devPath, "w") {|file| file.puts new_contents }
			end
		end
	end

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

def menu_method
	@menu = ["Compare Folders", "Backpack Links", "Template Language","Compare Files", "Exit"]
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
		compare_files()
	when 4
		exit_program()
	end
end

menu_method()