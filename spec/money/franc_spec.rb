require "money/franc"

RSpec.describe Franc do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Franc.new(5)
      expect(five.times(2)).to eq(Franc.new(10))
      expect(five.times(3)).to eq(Franc.new(15))
    end
  end

  describe "#==" do
    it "金額の等価性を判定できること" do
      expect(Franc.new(5) == Franc.new(5)).to be true
      expect(Franc.new(5) == Franc.new(6)).to be false
    end
  end
end
