require_relative 'test_result'

class TestCase
  def initialize(name)
    @name = name
  end

  def setup
  end

  def run
    result = TestResult.new
    result.test_started

    setup
    send(@name)
    tear_down

    result
  end

  def tear_down
  end
end
