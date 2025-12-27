require "money/bank"
require "money/money"

RSpec.describe Bank do
  describe "#reduce" do
    it "お金の合計を換算できること" do
      sum = Money.dollar(3).plus(Money.dollar(4))
      bank = Bank.new
      result = bank.reduce(sum, "USD")
      expect(result).to eq(Money.dollar(7))
    end

    it "お金を換算できること" do
      bank = Bank.new
      result = bank.reduce(Money.dollar(1), "USD")
      expect(result).to eq(Money.dollar(1))
    end
  end
end
