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

end
