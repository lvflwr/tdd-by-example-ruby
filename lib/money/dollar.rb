require "money/money"

class Dollar < Money
  def initialize(amount)
    @amount = amount
  end

  def currency
    "USD"
  end

  def times(multiplier)
    self.class.new(@amount * multiplier)
  end
end
