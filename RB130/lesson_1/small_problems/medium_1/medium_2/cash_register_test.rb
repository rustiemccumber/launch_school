require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup 
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(20)
  end

  def test_accept_money
    @transaction.amount_paid = 100
    @register.accept_money(@transaction)
    assert_equal(1100, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 100
    assert_equal(80, @register.change(@transaction))
  end

  def test_give_receipt
    @transaction.amount_paid = 100
    assert_output("You've paid $#{20}.\n") do 
      @register.give_receipt(@transaction)
    end
  end
  
  def test_prompt_for_payment_method
    @transaction.amount_paid = 100
    input = StringIO.new('100')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal 100, @transaction.amount_paid
  end
end