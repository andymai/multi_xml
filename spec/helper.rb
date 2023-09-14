def jruby?
  RUBY_PLATFORM == 'java'
end

require 'simplecov'

SimpleCov.start do
  add_filter '/spec'
  percent = jruby? ? 91.29 : 92.31
  minimum_coverage(percent)
end

require 'multi_xml'
require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
