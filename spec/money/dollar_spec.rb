require "money/dollar"

RSpec.describe Dollar do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Dollar.new(5)
      product = five.times(2)
      expect(product.amount).to eq(10)
      product = five.times(3)
      expect(product.amount).to eq(15)
    end
  end

  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Dollar.new(5) == Dollar.new(5)).to be true
      expect(Dollar.new(5) == Dollar.new(6)).to be false
    end
  end
end
