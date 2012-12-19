class Account
  attr_reader :balance       # accessor method 'balance'

  protected :balance         # and make it protected

  
 private

    def debit(account, amount)
      account.balance -= amount
    end

    def credit(account, amount)
      account.balance += amount
    end


  public

    def transferToSavings(amount)
      debit(@checking, amount)
      credit(@savings, amount)
    end

  protected  

  def greaterBalanceThan(other)
    return @balance > other.balance
  end
end

# singleton 
class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end


#array
a = [ 3.14159, "pie", 99 ]
puts a

b = Array.new
b[0]="oak"
puts b

#hash
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
puts h
