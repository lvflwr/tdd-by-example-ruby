require "money/dollar"

RSpec.describe Dollar do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Dollar.new(5)
      five.times(2)
      expect(five.amount).to eq(10)
    end
  end
end
