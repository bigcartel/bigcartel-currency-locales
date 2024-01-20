# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "currency-locales/version"

Gem::Specification.new do |s|
  s.name         = "bigcartel-currency-locales"
  s.version      = BigCartel::CurrencyLocales::VERSION
  s.authors      = ["Big Cartel"]
  s.email        = "dev@bigcartel.com"
  s.homepage     = "http://github.com/bigcartel/bigcartel-currency-locales"
  s.summary      = "Common locale data for Rails i18n of Big Cartel's supported currencies."
  s.description  = "Common locale data for Rails i18n of Big Cartel's supported currencies."

  s.files        = `git ls-files`.split($\)
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  s.add_development_dependency "appraisal"
  s.add_development_dependency "rails"
  s.add_development_dependency "rspec-rails"
end
