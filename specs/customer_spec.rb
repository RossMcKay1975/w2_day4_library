require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require('pry')

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new('Jimmy', 0)
  end


  def test_get_borrow_count
    assert_equal(0, @customer1.borrow_count())
  end

  def test_borrow_count__increased
    @customer1.borrow_book(1)
    assert_equal(1, @customer1.borrow_count())
  end
end
