require_relative 'test_case'
require_relative 'was_run'

class TestCaseTest < TestCase
  def test_template_method
    test = WasRun.new("test_method")
    test.run
    raise "Log does not match expected value" unless test.log == "setup test_method "
  end
end

TestCaseTest.new("test_template_method").run
