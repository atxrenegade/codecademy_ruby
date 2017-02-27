=begin
Harleigh Abel
Feb 13, 2017
Codecademy
Ruby - Object Oriented part II
my_banking.rb
=end
#added instances of checking, savings, called methods deposit, withdrawal, display balance
class Account
  attr_reader :name
  attr_reader :balance
  def initialize(type, name, balance=100)
      @name = name
      @balance = balance
  end

class CheckingAccount < Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
	 @type = "checking"
      @name = name
      @balance = balance
  end
class SavingsAccount < Account
  attr_reader :name
  attr_reader :balance
  def initialize( name, balance=0)
	 @type = "savings"
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
          puts "Withdrew #{amount}. New balance: $#{@balance} in your #{@type} account."
      else
          puts pin_error
      end
	def deposit(pin_number, amount)  
		 if pin_number == pin
          @balance += amount
          puts "Deposit #{amount}. New balance: $#{@balance} in your #{@type} account."
      else
          puts pin_error
      end    
  end          
end  

my_check_account  =  CheckingAccount.new("Harleigh", 145_007)
my_sav_account  =  SavingsAccount.new("Harleigh, 0," )
my_check_account.deposit(1234, 3_750)
my_sav_account .withdraw(7777, 500)
my_sav_account.withdraw(1234, 500)
my_sav_account.display_balance(1234)

