class Customer


attr_reader :name, :borrow_count

  def initialize(name, borrow_count)
    @name = name
    @borrow_count = borrow_count
  end

  def increase_borrow_count(amount)
    @borrow_count += amount
  end

end
