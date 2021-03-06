### CREATE AT USER CLASS####
class User
	##Requirements:
		#The user class should initialize with an email, password and birthdate
	def initialize (email, password, birthdate)
		@email = email
		@password = password
		@birthdate = birthdate
		puts "Please confirm your password."
		@confirmation = gets.chomp
		until @confirmation == @password 
			confirm_password_wrong
		end
		puts "Your password has been set."
		puts "Welcome!"
	end		
		#The user class should have reader & writer methods for:
			#Name
			#Location
			#Status
	def add_name
		puts "What\'s your name?"
		@name = gets.chomp.capitalize 
	end
	def add_location
		puts "Where do you live?"
		@location = gets.chomp.capitalize
			
	end	
	def add_status
		puts "What is your current status?"
		@status = gets.chomp
	end
	def see_info (profile)
		if profile.downcase == "status"
			puts @status 
		elsif profile.downcase== "location"
			puts @location
		elsif profile.downcase == "name"
			puts @name
		elsif profile.downcase == "birthdate"
			puts @birthdate
		else 
			puts "Sorry, you can\'t access that info."
		end
	end
	@photos = []
	def add_photo (photo) 
		photo << @photos
	end	
		#This photo one isn't entirely working yet. I'll try and fix it.
	private 
	def confirm_password_wrong 
		puts "Sorry, that was the incorrect password, please try again"
		@confirmation = gets.chomp
		if @confirmation.downcase == "exit"
			exit
		end	
	end					
				
end

		#Call a method in the initialize that confirms the password
			#First, create a method that prompts the user for input via the terminal
			#Then, compare that user input with password that was created initially
				#If the passwords match, say 'Welcome!'.
			 	# If they do not, have the user enter their password again, or give them the option to type exit to not complete the process
			#Call this method in initialize, so that the user has to confirm their password before their signup is complete


		### BONUS / Extra Credit ###
			#Setup a way for a user to store photos
				#(in this case, photos will be represented by strings like this: "img.jpg")







#### TEST YOUR USER CLASS BY CREATING MAY USER OBJECTS #####
	
	#Create at least 3 new user objects here:

ben = User.new("bgolub@lsoc.org", "SUPER SECRET PASSWORD", "May 18, 1999")
ben.add_name 
ben.see_info ("name")

alden = User.new("asulger@lsoc.org", "saucy", "September 11, 1998")
alden.add_location
alden.add_name

reis = User.new("mherman@lsoc.org", "bowling", "May 7, 1999")
reis.see_info ("birthdate")
reis.add_status 

#### CALL METHODS ON YOUR USER OBJECTS ####

	#Call at least two methods on each of your user classes