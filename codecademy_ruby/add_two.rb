=begin
Harleigh Abel 
Febuary 3, 2017
.add_two method 
=end

def add_two(user_input)
  answer = user_input.to_i + 2
  puts "The answer is #{answer}!"
end

number = gets.chomp!
add_two(number) 
