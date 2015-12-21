require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  config.warnings = true
  config.order = :random
end
