=begin
Harleigh Abel
Feb 7, 2017
Codecademy Exercise
"A Night at The Movies"
=end

# creates hash with movie listings and ratings
movies = {  
    INCEPTION: 5,
    LIMITLESS: 3.5,
    MATRIX: 5    
}

# greets user and prompts for command input
puts "Welcome to Movie Ratingz\n"
puts "Please enter a command.\n\n"

# lists valid commands
puts "'add' \n"
puts "'update' \n"
puts "'display' \n"
puts "'delete' \n\n"

# gets user's command choice
choice = gets.strip.downcase

puts"\n"
# initiates case selection for command choice
case choice
# adds new movies
# -- prompts user for movie title
when "add"
    puts "Please enter a movie title: "
    title = gets.upcase.chomp!
    
    # -- compares user input against database to prevent duplicate entry
	# -- if not duplicate title, adds movie to hash
    if movies[title.to_sym].nil?
      puts "\nPlease enter the movie rating out of 5: "
      rating = gets.chomp!
      movies[title.to_sym] = rating.to_i
      puts "\nThank you.\n\n#{title} has been added to the movie listings!\n\n"   
        
    # -- if title is duplicate, outputs error message to user   
    else
      puts "This movie is already in the system!"    
    end    

# updates existing movie listing 
# -- prompts user for movie to update
when "update"
   puts "Please enter a movie title: "
   title = gets.upcase.chomp!
   
	# -- checks database for movie title
	# -- if not present, returns error message to user 
   if movies[title.to_sym].nil?
       puts "\nI'm sorry #{title} has listing has not been added to the movie listings yet!\n\n"
	
	# --updates movie and notifies user
    else
        puts "\nPlease enter a new rating for #{title} out of 5: "
		rating = gets.chomp!
      	movies[title.to_sym] = rating.to_i
		puts "\nThank you. #{title} has been updated to a rating of #{rating}.\n\n"
    end    

# displays all movie listings in database
when "display"
    movies.each do |title, rating|
        puts "#{title}: #{rating}" 
    end
    puts"\n"
    
# deletes user specified movie listing  
# -- prompts user for movie to delete 
when "delete"
   puts "Please enter a movie title: "
   title = gets.upcase.chomp!

	# -- checks database for movie title
	# -- if not present, returns error message to user    
   if movies[title.to_sym].nil?
       puts "\nERROR: #{title} is not found in the movie listings!\n\n"

	# --deletes movie and notifies user
    else   
        movies.delete(title)
        puts "\n#{title} has now been deleted from the system!\n\n"
    end    
    
# returns error message to user if input command is not valid    
else 
    puts "\nError! Please re-start the program and type a valid command!\n\n"
end 
