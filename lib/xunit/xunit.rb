require_relative "was_run"

test = WasRun.new("test_method")
pp test.was_run
test.run
pp test.was_run
