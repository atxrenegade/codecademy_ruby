=begin
Harleigh Abel 
Feb. 5, 2017
Ruby Calculator
=end

puts "Welcome to Calculator!"
puts "This is a basic calculator program that adds, subtracts, multiplies or divides two number you choose."
puts "\n"

puts "What is your name?"
name = gets.chomp!
puts "\n"
puts "Hello, #{name}"

puts "Please enter the first number: "
number_1 = gets.to_i

puts "Please choose the appropriate operator (+, -, *, /)"
operator = nil

operator = gets.chomp!
if operator != ("+"||"-"||"*"||"/")
    puts "Please enter a valid operator: (+, -, *, \): "
    operator = gets.chomp!
end

puts "Please enter a second number: " 
number_2 = gets.to_i

puts "Thank you #{name}, \n"
puts "#{number_1} #{operator} #{number_2} =" 
eval "#{number_1} #{operator} #{number_2}"








