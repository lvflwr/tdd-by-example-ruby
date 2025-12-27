class WasRun
  attr_reader :was_run

  def initialize(name)
    @was_run = nil
    @name = name
  end

  def run
    send(@name)
  end

  def test_method
    @was_run = 1
  end
end
