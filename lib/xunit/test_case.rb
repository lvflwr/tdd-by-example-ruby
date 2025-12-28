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

    begin
      send(@name)
    rescue
      result.test_failed
    end

    tear_down

    result
  end

  def tear_down
  end
end
