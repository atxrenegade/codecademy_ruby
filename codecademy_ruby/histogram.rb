=begin
Harleigh Abel
January, 27, 2017
Codecademy Ruby Exercises
Histogram
=end
puts "Please enter your message:"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word| 
    frequencies[word] += 1 
end    
frequencies = frequencies.sort_by do |word, count| 
    count
end 
frequencies.reverse!
frequencies = frequencies.sort_by do |word, count| 
    puts "#{word} #{count}"
end
