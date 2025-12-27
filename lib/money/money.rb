require "money/sum"

class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    @amount == other.amount && @currency == other.currency
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def plus(addend)
    Sum.new(self, addend)
  end

  def reduce(bank, to_currency)
    rate = bank.rate(@currency, to_currency)
    Money.new(@amount / rate, to_currency)
  end

  class << self
    def dollar(amount)
      Money.new(amount, "USD")
    end

    def franc(amount)
      Money.new(amount, "CHF")
    end
  end
end
