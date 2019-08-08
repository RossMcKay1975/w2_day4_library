class Customer


attr_reader :name, :borrow_count

  def initialize(name, borrow_count)
    @name = name
    @borrow_count = borrow_count
  end

  def borrow_book(amount)
    @borrow_count += 1
  end

end
