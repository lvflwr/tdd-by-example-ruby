class Bank
  def reduce(source, to_currency)
    amount = source.augend.amount + source.addend.amount
    Money.new(amount, to_currency)
  end
end
