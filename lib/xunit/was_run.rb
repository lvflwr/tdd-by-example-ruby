require_relative 'test_case'

class WasRun < TestCase
  attr_reader :was_run

  def initialize(name)
    @was_run = nil
    super(name)
  end

  def test_method
    @was_run = 1
  end
end
