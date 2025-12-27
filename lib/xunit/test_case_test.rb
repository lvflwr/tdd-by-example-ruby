require_relative 'test_case'
require_relative 'was_run'

class TestCaseTest < TestCase
  def test_running
    test = WasRun.new("test_method")
    raise "Test was run before run method called" unless test.was_run.nil?

    test.run
    raise "Test was not run after run method called" unless test.was_run == 1
  end

  def test_setup
    test = WasRun.new("test_method")
    test.run
    raise "Setup was not called before test method" unless test.was_setup
  end
end

TestCaseTest.new("test_running").run
TestCaseTest.new("test_setup").run
