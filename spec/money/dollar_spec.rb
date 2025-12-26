require "money/dollar"

RSpec.describe Dollar do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Money.dollar(5)
      expect(five.times(2)).to eq(Dollar.new(10))
      expect(five.times(3)).to eq(Dollar.new(15))
    end
  end

  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Dollar.new(5) == Dollar.new(5)).to be true
      expect(Dollar.new(5) == Dollar.new(6)).to be false
    end
  end
end
