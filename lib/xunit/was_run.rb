require_relative 'test_case'

class WasRun < TestCase
  attr_reader :log

  def setup
    @log = "setup "
  end

  def test_method
    @log += "test_method "
  end
end
