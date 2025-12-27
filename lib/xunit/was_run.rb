require_relative 'test_case'

class WasRun < TestCase
  attr_reader :was_run, :was_setup

  def setup
    @was_setup = 1
  end

  def test_method
    @was_run = 1
  end
end
