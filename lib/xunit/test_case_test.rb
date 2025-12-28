require_relative 'test_case'
require_relative 'test_suite'
require_relative 'was_run'

class TestCaseTest < TestCase
  def setup
    @result = TestResult.new
  end

  def test_template_method
    test = WasRun.new("test_method")
    test.run(@result)
    raise "Log does not match expected value" unless test.log == "setup test_method tear_down "
  end

  def test_result
    test = WasRun.new("test_method")
    test.run(@result)
    raise "Result summary does not match expected value" unless @result.summary == "1 run, 0 failed"
  end

  def test_failed_result
    test = WasRun.new("test_broken_method")
    test.run(@result)
    raise "Result summary does not match expected value" unless @result.summary == "1 run, 1 failed"
  end

  def test_failed_result_formatting
    @result.test_started
    @result.test_failed
    raise "Result summary does not match expected value" unless @result.summary == "1 run, 1 failed"
  end

  def test_suite
    suite = TestSuite.new
    suite.add(WasRun.new("test_method"))
    suite.add(WasRun.new("test_broken_method"))
    suite.run(@result)
    raise "Result summary does not match expected value" unless @result.summary == "2 run, 1 failed"
  end
end

suite = TestSuite.new
suite.add(TestCaseTest.new("test_template_method"))
suite.add(TestCaseTest.new("test_result"))
suite.add(TestCaseTest.new("test_failed_result"))
suite.add(TestCaseTest.new("test_failed_result_formatting"))
suite.add(TestCaseTest.new("test_suite"))
result = TestResult.new
suite.run(result)
puts result.summary
