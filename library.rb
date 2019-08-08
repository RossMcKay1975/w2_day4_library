class Library

attr_reader :name

  def initialize(name)
    @name = name
    @books = []
  end


  def add_to_library(book)
    @books << book
  end

  def book_count
    @books.count
  end

  def lend_book_to_customer(book, customer)
    customer.borrow_book(book)
  end

  def remove_book_from_library_stock(book)
    @books.delete(book)
  end
end
