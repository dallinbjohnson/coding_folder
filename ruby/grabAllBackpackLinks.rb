require "pry"

require 'spreadsheet'

Spreadsheet.client_encoding = 'cp1251'


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

def folder_names
	print "what is the folder name/path to folder, you want to be used? "
	folder = gets.chomp.strip
	puts "\n"

	if File.exists?(folder)
    print "What is the URL you want to filter by or press enter for all? "
  	url = gets.chomp.strip
  	puts "\n"

		return folder, url
	else
		folderArr = []

		folderArr << folder unless File.exists?(folder)

		puts "#{folderArr.join(', ')} folder dose not exist!"
		puts "\n"

		folder_names()
	end
end

def find_files
  @allBackpackLinks = []
	folder, url = folder_names()

  allFiles = Dir["#{folder}/**/*.aspx", "#{folder}/**/*.ascx"]

  allFiles.each do |path|
    backpack_links(path, url)
  end

  write_to_spreadsheet()
end

def backpack_links(path, url)
  contentsFile = File.open(path, "r"){ |file| file.read }
  contentsFile = contentsFile.gsub(/<!--.*?-->|<%--.*?--%>/m, "")

  allBackpack = contentsFile.scan(/<ResellerViewControls:BackpackLink.*?#{url}.*?(?:<img.*?\/>.*?)?\/>/i)

  @allBackpackLinks << [path, allBackpack]
end

def write_to_spreadsheet
  book = Spreadsheet::Workbook.new

  sheet1 = book.create_worksheet

  i = 0
  @allBackpackLinks.each do |data|
    if data[1] != []
      sheet1[i,0] = data[0]
      data[1].each do |link|
        sheet1[i,1] = link
        i += 1
      end
    end
    # i += 1
  end

  book.write 'backpackLinks.xls'

  puts "Success!"
  puts "\n"

  menu_method()
end

def exit_program
	exit
end

def menu_method
	@menu = ["All Backpack Links in Folder", "Exit"]
	option_num = 0

	puts "Menu:"
	@menu.each { |option| puts "#{option_num}) #{option}"; option_num += 1 }

	@menu_options = prompt("0", "Pick a number from the Menu:").to_i
	puts "\n"

	case @menu_options
	when 0
		find_files()
	when 1
		exit_program()
	end
end

menu_method()
