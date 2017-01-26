puts "Rock, Paper, Scissors."
puts "Pick one!"
user_play = gets.chomp.downcase
puts "I pick rock..."

if user_play == "scissors"
    puts "Rock smashes scissors."
    puts "I win!"
elsif user_play == "paper"
    puts "Paper covers rock."
    puts "You win!"   
elsif user_play == "rock"
    puts "You picked rock too."
    puts "It's a tie!"
else
    puts "You didnt play the game correctly!"
    puts "You loose by default!"
end 



