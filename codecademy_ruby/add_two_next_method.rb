=begin
Harleigh Abel 
Febuary 3, 2017
.add_two_next method 
=end

def add_two(number)
  number.chomp!
  number.to_i  
  
  answer = number.next
  answer = answer.next
  
  puts "#{answer}" 
  
end 
 
input = gets.chomp!
add_two(input)
