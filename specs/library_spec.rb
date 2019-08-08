require('minitest/autorun')
require('minitest/rg')
require_relative('../library')
require_relative('../book')
require_relative('../customer')
require('pry')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new('Bookworld')
    @customer1 = Customer.new('Jimmy', 0)
    @book1 = Book.new("Harry F'n Potter", "Jaky Rowling")
    @book2 = Book.new("Harry F'n Potter 2", "Jaky Rowling")
    @book3 = Book.new("Harry F'n Potter 3", "Jaky Rowling")
  end

  def test_add_book_to_library
    @library.add_to_library(@book1)
    assert_equal(1, @library.book_count())
  end
end
