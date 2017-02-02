=begin
Harleigh Abel 
Feb 1, 2017
Ruby Exercise
Codecademy
"Sort Library"
=end

puts "Welcome to sort library!"
def arrange(arr, rev=false)
    if rev
        arr.sort! { |item1, item2 | item2 <=> item1}
    else
        arr.sort! { |item1, item2 | item1 <=> item2}  
    end 
  end  
         
numbers = [2, 56, 23, 27, 958, 6, 40]


puts "Here are the numbers in ascending order: #{arrange(numbers)}"
puts "Here are the numbers in descending order: #{arrange(numbers, true)}"



