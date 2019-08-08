require('minitest/autorun')
require('minitest/rg')
require_relative('../book')
require('pry')

class TestBook < MiniTest::Test

  def setup
    @book1 = Book.new("Harry F'n Potter", "Jaky Rowling")
  end


  def test_get_book_name
    assert_equal("Harry F'n Potter", @book1.title())
  end

end
