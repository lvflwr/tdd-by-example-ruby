require "money/sum"

RSpec.describe Sum do
  describe "#plus" do
    it "お金を加算できること" do
      five_bucks = Money.dollar(5)
      ten_francs = Money.franc(10)
      bank = Bank.new
      bank.add_rate("CHF", "USD", 2)
      sum = Sum.new(five_bucks, ten_francs).plus(five_bucks)
      result = bank.reduce(sum, "USD")
      expect(result).to eq(Money.dollar(15))
    end
  end
end
