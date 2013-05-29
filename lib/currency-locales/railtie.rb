module BigCartel
  module CurrencyLocales
    require 'rails'

    class Railtie < ::Rails::Railtie
      initializer 'currency-locales' do |app|
        BigCartel::CurrencyLocales.insert
      end
    end
  end
end
