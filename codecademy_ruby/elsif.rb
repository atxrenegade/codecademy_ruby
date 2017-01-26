puts "What is your name?"
variable_name = gets.chomp.length
cookies = 6
muffins = variable_name
if cookies > muffins
    puts "All the cookies belong to me!"
elsif cookies == muffins
    puts "All the muffins are mine!"
else
    puts "I dont eat junkfood! Take all you want!"
end
