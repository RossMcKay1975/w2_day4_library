require('minitest/autorun')
require('minitest/rg')
require_relative('../library')
require_relative('../book')
require_relative('../customer')
require('pry')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new('Bookworld', [@book1, @book2, @book3])
    @customer1 = Customer.new('Jimmy', 0)
    @book1 = Book.new("Harry F'n Potter", "Jaky Rowling")
    @book2 = Book.new("Harry F'n Potter 2", "Jaky Rowling")
    @book3 = Book.new("Harry F'n Potter 3", "Jaky Rowling")
  end


end
