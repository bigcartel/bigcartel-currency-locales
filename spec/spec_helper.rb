ENV["RAILS_ENV"] = "test"

require 'bigcartel-currency-locales'

begin
  require 'action_controller/railtie'
  $stdout.puts "Testing against Rails #{ Rails::VERSION::STRING }"
rescue LoadError
  gem 'rails'
  require 'action_pack'
  require 'action_controller'
  $stdout.puts "Testing against Rails #{ ActionPack::VERSION::STRING }"
end

BigCartel::CurrencyLocales.insert

if Module.const_defined?("RSpec")
  RSpec.configure do |config|
    config.mock_with :rspec
    config.fail_fast = true
  end
else
  require 'spec'
  Spec::Runner.configure do |config|
    config.mock_with :rspec
  end
end
