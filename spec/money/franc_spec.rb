RSpec.describe Franc do
  describe "#times" do
    it "金額の掛け算ができること" do
      five = Franc.new(5)
      expect(five.times(2)).to eq(Franc.new(10))
      expect(five.times(3)).to eq(Franc.new(15))
    end
  end
end
