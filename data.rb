# Loading seed data

# puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'

# STUDENTS.each do |name|
#   puts "#{name}"
# end



# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com

# You found me! Love that you used detect here.
# How about creating a method that search by first_name? And make sure that you return all results of the name.
# Detect will only return the first thing it finds. So if you did a search with the first name "Dave",
# then you would a get several results.

specific_student = STUDENTS.detect { |name| name["first_name"] == "Vince"}
puts "name: #{specific_student["first_name"]} #{specific_student["last_name"]}"
puts "twitter: @#{specific_student["twitter"]}"
puts "github: #{specific_student["github"]}"
puts "blog: http://#{specific_student["blog"]}"
puts "email: #{specific_student["email"]}"

# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines

twitter_handles = STUDENTS.collect { |handles| "@#{handles["twitter"]}"}
puts twitter_handles

# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "

# You figured it out! Good use of the |key, value| block variables. It gives you access to the values and keys,
# without hard coding the key names.

# Let's talk about spacing. When you're inside a loop or conditional indent two spaces.


STUDENTS.each do |individual_hash|
	individual_hash.each_pair do |key, value|
		if value != nil
			puts "#{key}: #{value}"
		end
	end
end

# Here's the spacing I recommend based on the code above.

# STUDENTS.each do |individual_hash|
  
#   individual_hash.each_pair do |key, value|
#    if value != nil
#      puts "#{key}: #{value}"
#    end
#  end
  
#end


# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.

STUDENTS.each do |individual_hash|
	individual_hash.keys do |key, value|
		if value != nil
			puts "#{key}: #{value}"
		end
	end
end


# BONUS CHALLENGE 5

# Create a method to display the details of a student
# Create a method to find a student by first name

# Oops! I tried running your script but you had some code on line 77. Comment that out.

# Try creating methods for displaying the output and for finding a student.

def 
	
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end
