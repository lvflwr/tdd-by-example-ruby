class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to_currency)
    amount = @augend.amount + @addend.amount
    Money.new(amount, to_currency)
  end
end
