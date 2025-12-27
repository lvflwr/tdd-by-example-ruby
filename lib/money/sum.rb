class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to_currency)
    amount = @augend.reduce(bank, to_currency).amount + @addend.reduce(bank, to_currency).amount
    Money.new(amount, to_currency)
  end

  def plus(addend)
    Sum.new(self, addend)
  end
end
