ENV["RAILS_ENV"] = "test"

require 'bigcartel-currency-locales'
require 'action_controller/railtie'

$stdout.puts "\nTesting against Rails #{Rails::VERSION::STRING}"

BigCartel::CurrencyLocales.insert

RSpec.configure do |config|
  config.mock_with :rspec
  config.fail_fast = true

  config.expect_with(:rspec) do |c|
    c.syntax = :should
  end
end
