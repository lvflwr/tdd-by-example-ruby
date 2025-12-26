require "money/franc"

RSpec.describe Franc do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Money.franc(5)
      expect(five.times(2)).to eq(Money.franc(10))
      expect(five.times(3)).to eq(Money.franc(15))
    end
  end

  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Money.franc(5) == Money.franc(5)).to be true
      expect(Money.franc(5) == Money.franc(6)).to be false
    end
  end
end
