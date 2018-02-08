# Big Cartel Currency Locales [![Build Status](https://travis-ci.org/bigcartel/bigcartel-currency-locales.png?branch=master)](https://travis-ci.org/bigcartel/bigcartel-currency-locales) [![Gem Version](https://badge.fury.io/rb/bigcartel-currency-locales.png)](http://badge.fury.io/rb/bigcartel-currency-locales)

Loads locale data for all of Big Cartel's supported currencies so that we can
format the currency amounts with the I18n gem. Used internally by [Big
Cartel](http://bigcartel.com) and [Dugway](https://github.com/bigcartel/dugway).

## Install

Add this line to your application's Gemfile:

```ruby
gem 'bigcartel-currency-locales'
```

And then execute:

```ruby
bundle
```

Or install it yourself as:

```ruby
gem install bigcartel-currency-locales
```

## Development

The gem is managed and tested against different dependency versions with
[Appraisal](https://github.com/thoughtbot/appraisal).

The test suite is powered by RSpec. Run the entire test suite with:

```
bundle exec appraisal rake
```
