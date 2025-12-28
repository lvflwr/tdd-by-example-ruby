require_relative 'test_case'
require_relative 'was_run'

class TestCaseTest < TestCase
  def test_template_method
    test = WasRun.new("test_method")
    test.run
    raise "Log does not match expected value" unless test.log == "setup test_method tear_down "
  end

  def test_result
    test = WasRun.new("test_method")
    result = test.run
    raise "Result summary does not match expected value" unless result.summary == "1 run, 0 failed"
  end

  def test_failed_result
    test = WasRun.new("test_broken_method")
    result = test.run
    raise "Result summary does not match expected value" unless result.summary == "1 run, 1 failed"
  end

  def test_failed_result_formatting
    result = TestResult.new
    result.test_started
    result.test_failed
    raise "Result summary does not match expected value" unless result.summary == "1 run, 1 failed"
  end

  def test_suite
    suite = TestSuite.new
    suite.add(WasRun.new("test_method"))
    suite.add(WasRun.new("test_broken_method"))
    result = suite.run
    raise "Result summary does not match expected value" unless result.summary == "2 run, 1 failed"
  end
end

puts TestCaseTest.new("test_template_method").run.summary
puts TestCaseTest.new("test_result").run.summary
puts TestCaseTest.new("test_failed_result").run.summary
puts TestCaseTest.new("test_failed_result_formatting").run.summary
puts TestCaseTest.new("test_suite").run.summary
