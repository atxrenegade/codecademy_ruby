print "Say something Ruby Enthusiast!"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "I think you said #{user_input}!"
else
    puts "Nothing here to report!"
end
