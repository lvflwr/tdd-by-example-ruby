class Money
  def ==(other)
    @amount == other.amount && self.class == other.class
  end

  protected

  attr_reader :amount

  class << self
    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end
  end
end
