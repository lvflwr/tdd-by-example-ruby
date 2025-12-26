class Money
  attr_reader :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    @amount == other.amount && self.class == other.class
  end

  protected

  attr_reader :amount

  class << self
    def dollar(amount)
      Dollar.new(amount, "USD")
    end

    def franc(amount)
      Franc.new(amount, "CHF")
    end
  end
end
