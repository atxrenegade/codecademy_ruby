=begin
Harleigh Abel
Feb. 8, 2017
Codecademy Exercise
The Refactor Factory
=end

$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  puts "n must be an integer" unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0    
  
  prime_array ||= []
  
  prime = Prime.new
  
 n.times 
    prime_array.push(prime.next) 
    prime.array
 end

first_n_primes(10)
