=begin
Harleigh Abel 
Feb 1, 2017
Ruby Exercise
Codecademy
"Sort Library"
=end

puts "Welcome to Sort Library!"
puts "I am going to ask you for five integers. \n "


def arrange(arr, rev=false)
    if rev
        arr.sort! { |item1, item2 | item2 <=> item1}
    else
        arr.sort! { |item1, item2 | item1 <=> item2}  
    end 
  end  
      
  iteration = 0 
  numbers = Array.new(4)
  
  while iteration < 5
    print "Please enter integer #{iteration + 1}:"
    numbers[iteration] = gets.chomp!
    iteration += 1
  end
  
print "\n"
puts "Here are the numbers in ascending order: #{arrange(numbers)} \n "
puts "Here are the numbers in descending order: #{arrange(numbers, true)} \n "
puts "Thanks for playing!"
