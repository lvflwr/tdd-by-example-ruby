require "money/pair"

class Bank
  def initialize
    @rates = {}
  end

  def reduce(source, to_currency)
    source.reduce(self, to_currency)
  end

  def add_rate(from_currency, to_currency, rate)
    @rates[Pair.new(from_currency, to_currency)] = rate
  end

  def rate(from_currency, to_currency)
    return 1 if from_currency == to_currency

    @rates[Pair.new(from_currency, to_currency)]
  end
end
