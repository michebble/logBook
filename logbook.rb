# logbook page generator
# by Michael Hebblethwaite

#2017-12-17 09:08:08 +0900 <time output reference


# intit date information 
date = Time.new.to_s #holds current time
monthList = ["January" , "February" , "March", "April", "May" , "June" , "July" , "August" , "September" , "October" , "November" , "December"] #months for folder creataion
monthCounter = date[5..7].to_i - 1 #convert time information into number to look up month name
monthName = monthList[monthCounter] #output month name
yearName = date[0..3] #output year

#content creataion
fileName = date[0..9].to_s + ".txt"
firstString = "Entry for " + date[8..9] + " " + monthName + " " + yearName  + ".\n\n"

#content condensed into string
#testString = "Testing at: " + date[11..18]+ "\n"

#Initilise key folders
usersDocuments = Dir.home() + "/Documents"
usersLogBook = usersDocuments + "/logbook"


#create logbook folder - could use a loop?
Dir.chdir (usersDocuments) #move to working directory
Dir.mkdir (usersLogBook) unless Dir.exist?(usersLogBook)



#directory check/ directory 
Dir.chdir (usersLogBook) #move to working directory
Dir.mkdir (usersLogBook + "/" + yearName) unless Dir.exist?(usersLogBook + "/" + yearName)


Dir.chdir (usersLogBook + "/" + yearName)
Dir.mkdir (usersLogBook + "/" + yearName + "/" + monthName) unless Dir.exist?(usersLogBook + "/" + yearName + "/" + monthName)

Dir.chdir (usersLogBook + "/" + yearName + "/" + monthName)


#implement file check to stop the firstString being writen everytime
if File.exist?(fileName) == true
 puts "File already exists."
else
	File.open fileName, 'a' do |f|
    	f.write firstString
	end
end

exec "open " + fileName