=begin
Harleigh Abel
Feb 13, 2017
Codecademy
Ruby - Object Oriented part II
my_banking.rb
=end
#add balance check for insufficient funds
class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
      @name = name
      @balance = balance
  end
  private
  def pin
      @pin = 1234
  end
  def pin_error
      return "Access denied: incorrect PIN."
  end
  public
  def display_balance(pin_number)
      if pin_number == pin
          puts "Balance: $#{@balance}." 
      else
          puts pin_error
      end  
  end 
  def withdraw(pin_number, amount)
      if pin_number == pin
		  @balance > amount?  @balance -= amount : return "Insuffcient funds!"
		# does insufficient funds fall straight through to the next line?
          puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
          puts pin_error
      end
	def deposit(pin_number, amount)  
		 if pin_number == pin
          @balance += amount
          puts "Deposit #{amount}. New balance: $#{@balance}."
      else
          puts pin_error
      end    
  end          
end  

checking_account = Account.new("Harleigh", 145_007)
