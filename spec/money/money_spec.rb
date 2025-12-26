require "money/money"

RSpec.describe Money do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Money.dollar(5)
      expect(five.times(2)).to eq(Money.dollar(10))
      expect(five.times(3)).to eq(Money.dollar(15))
    end
  end

  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Money.dollar(5) == Money.dollar(5)).to be true
      expect(Money.dollar(5) == Money.dollar(6)).to be false
      expect(Money.franc(5) == Money.dollar(5)).to be false
    end
  end

  describe "#currency" do
    it "通貨の種類を返すこと" do
      expect(Money.dollar(1).currency).to eq("USD")
      expect(Money.franc(1).currency).to eq("CHF")
    end
  end

  describe "#plus" do
    it "金額の加算ができること" do
      sum = Money.dollar(5).plus(Money.dollar(5))
      expect(sum).to eq(Money.dollar(10))
    end
  end
end
