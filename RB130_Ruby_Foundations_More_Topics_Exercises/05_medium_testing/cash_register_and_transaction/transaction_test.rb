require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(5)
    @register = CashRegister.new(100)
  end
  
  def test_prompt_for_payment_sets_amount_paid
    input = StringIO.new("5\n")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(5, @transaction.amount_paid)
  end
end