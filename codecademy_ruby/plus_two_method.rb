def add_two(number)
  number.chomp!
  number.to_i  
  answer = number + 2
  puts #{answer}
end 
 
input.gets
add_two(input)
