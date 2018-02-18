# logbook page generator
# by Michael Hebblethwaite

#2017-12-17 09:08:08 +0900 <time output reference

# Intit date information 
date = Time.new.to_s #holds current time
monthList = ["January" , "February" , "March", "April", "May" , "June" , "July" , "August" , "September" , "October" , "November" , "December"] #months for folder creataion
monthCounter = date[5..7].to_i - 1 #convert time information into number to look up month name
monthName = monthList[monthCounter] #output month name
yearName = date[0..3] #output year

# Content creataion
fileName = date[0..9].to_s + ".txt"
firstString = "Entry for " + date[8..9] + " " + monthName + " " + yearName  + ".\n\n"


# Directory check/creation
directoryPath = []
directoryPath[0] = Dir.home() + "/Documents"
directoryPath[1] = "logbook"
directoryPath[2] = yearName
directoryPath[3] = monthName

newPath = ""
directoryPath.each do |folder|
	Dir.mkdir(folder) unless Dir.exist?(folder)
	Dir.chdir(folder)
	newPath += folder + "/"
end

# File check/creation and content entry 
if File.exist?(fileName) == true
 puts "File already exists."
else
	File.open fileName, 'a' do |f|
    	f.write firstString
	end
end

# Open current file
exec "open " + fileName