class WasRun
  attr_reader :was_run

  def initialize(name)
    @was_run = nil
  end

  def run
    test_method
  end

  def test_method
    @was_run = 1
  end
end
