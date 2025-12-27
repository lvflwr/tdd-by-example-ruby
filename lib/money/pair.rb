class Pair
  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(other)
    @from == other.from && @to == other.to
  end

  def eql?(other)
    self == other
  end

  def hash
    0
  end

  protected

  attr_reader :from, :to
end
