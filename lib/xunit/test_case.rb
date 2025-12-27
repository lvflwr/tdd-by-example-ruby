require_relative 'test_result'

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

    TestResult.new
  end

  def tear_down
  end
end
