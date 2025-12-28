require_relative 'test_result'

class TestCase
  def initialize(name)
    @name = name
  end

  def setup
  end

  def run(result)
    result.test_started

    setup

    begin
      send(@name)
    rescue
      result.test_failed
    end

    tear_down
  end

  def tear_down
  end
end
