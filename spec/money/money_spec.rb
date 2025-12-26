require "money/money"
require "money/dollar"
require "money/franc"

RSpec.describe Money do
  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Money.franc(5) == Money.dollar(5)).to be false
    end
  end
end
