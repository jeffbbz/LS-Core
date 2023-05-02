require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @transaction = Transaction.new(5)
    @register = CashRegister.new(100)
  end
  
  def test_accept_money
    paid = @transaction.amount_paid = 5
    start_amount = @register.total_money
    assert_equal(start_amount + paid, @register.accept_money(@transaction))
    assert_equal(start_amount + paid, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 10
    paid = @transaction.amount_paid
    cost = @transaction.item_cost
    assert_equal(paid - cost, @register.change(@transaction))
  end

  def test_give_receipt
    cost = @transaction.item_cost
    assert_output("You've paid $#{cost}.\n") do
      @register.give_receipt(@transaction)
    end
  end
end