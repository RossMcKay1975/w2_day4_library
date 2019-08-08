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

  def test_lend_book_to_customer
    # binding.pry
    @library.add_to_library(@book1)
    @library.lend_book_to_customer(@book1, @customer1)
    assert_equal(1, @customer1.borrow_count())
  end

  def test_lend_book_to_customer__full_lifecycle
    @library.add_to_library(@book1)
    @library.add_to_library(@book2)
    @library.add_to_library(@book3)
    @library.remove_book_from_library_stock(@book1)
    @library.lend_book_to_customer(@book1, @customer1)
    assert_equal(2, @library.book_count())
    assert_equal(1, @customer1.borrow_count())
  end


end
