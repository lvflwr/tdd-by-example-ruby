class TestCase
  def initialize(name)
    @name = name
  end

  def setup
  end

  def run
    setup
    send(@name)
    tear_down
  end

  def tear_down
  end
end
