print "rock, paper, scissors. Pick one!"
user_play = gets.chomp.length
puts "I pick rock"

if user_play == 8
    puts "Rock smashes scissors"
    puts "I win!"
elsif user_play == 5
    puts "Paper covers rock"
    puts "You win!"   
elsif user_play == 4
    puts "You picked rock too"
    puts "It's a tie!"
else
    puts "You didnt play the game correctly!"
    puts "You loose by default!"
end    
