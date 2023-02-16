class BankAccount
  attr_accessor :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  def deposit(amount)
    if valid_deposit?(amount)
      self.balance += amount
      "$#{amount} deposited. Total balance is $#{balance}."
    else
      "Unable to withdraw $#{amount}. Enter a positive amount."
    end
  end

  def withdraw(amount)
    if valid_withdrawl?(amount)
      self.balance -= amount
      "$#{amount} withdrawn. Total balance is $#{balance}."
    else
      "Unable to withdraw $#{amount}. " \
      "Enter positive amount less than or equal to current balance ($#{balance})."
    end
  end

  def valid_withdrawl?(amount)
    valid_deposit?(amount) && balance - amount >= 0
  end

  def valid_deposit?(amount)
    amount > 0
  end
end

# Example

account = BankAccount.new('5538898', 'Genevieve')

                          # Expected output:
p account.balance         # => 0
p account.deposit(50)     # => $50 deposited. Total balance is $50.
p account.balance         # => 50
p account.withdraw(80)    # => Invalid. Enter positive amount less than or equal to current balance ($50).
                          # Actual output: $80 withdrawn. Total balance is $50.
p account.balance         # => 50
p account.withdraw(25)
p account.balance
p account.withdraw(-10)
p account.balance
p account.withdraw(0)
p account.balance
p account.withdraw(1)
p account.balance

=begin
  
It's important to remember that Ruby setter methods always return the argument passed in. Therefore #balance= setter method
will return -30 (the argument passed in) which will then be stored in success. As -30 is a truthy value, line 26 if success
will always evaluate to true and thus line 27 will be returned by the method. However, as -30 will not return true
from #valid_transaction?, the actaully setting part of the setter method will not be run. So the balance will not be re-assigned
but the success statement will always be returned.

The code has been refactored to make better and more direct use of validation methods and also to allow for
the balance= setter method to have only one purpose, setting the balance instance variable.

=end
