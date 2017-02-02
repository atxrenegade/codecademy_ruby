=begin
Harleigh Abel 
Jan. 27th, 2017
Ruby Exercise
Codecademy
"Redacted"
=end

puts "Please enter your message:"
message = gets.chomp
puts "What word would you like to redact?"
text = gets.chomp

words = message.split (" ")

words.each do |letter|
    if letter == text
        print " REDACTED "
    else
        print " #{letter} "
    end    
end    
    
