print "What is your first name?"
variable_name = gets.chomp.capitalize!
print "What is your last name?"
variable_last_name = gets.chomp.capitalize!
print "What city are you from?"
variable_city = gets.chomp.capitalize!
print "What state are you from? Abbreviate please."
variable_state = gets.chomp.upcase!
print "Hello #{variable_name} #{variable_last_name} from #{variable_city} #{variable_state}!" 

