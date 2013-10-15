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



STUDENTS.each do |individual_hash|
	individual_hash.each_pair do |key, value|
		if value != nil
			puts "#{key}: #{value}"
		end
	end
end



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

def 
	
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end