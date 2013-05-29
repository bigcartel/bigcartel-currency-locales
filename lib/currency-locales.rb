require 'currency-locales/railtie' if defined?(::Rails) && defined?(::Rails::Railtie)

module BigCartel
  module CurrencyLocales
    class << self
      def insert
        locales = Dir[File.join(File.dirname(__FILE__), 'currency-locales', 'locales', '*.yml')]
        I18n.load_path.concat(locales)
      end
    end
  end
end
