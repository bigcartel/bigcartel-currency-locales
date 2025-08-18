require 'spec_helper'

shared_examples_for "locale" do |locale_code, small_currency, big_currency, small_precision, big_precision|
  let(:locale) { locale_code }

  it "should translate the small amount to currency for locale #{locale_code}" do
    expect(number_to_currency(small_amount)).to eq(small_currency)
  end

  it "should translate the big amount to currency for locale #{locale_code}" do
    expect(number_to_currency(big_amount)).to eq(big_currency)
  end

  it "should translate the small amount with precision for locale #{locale_code}" do
    expect(number_with_precision(small_amount)).to eq(small_precision)
  end

  it "should translate the big amount with precision for locale #{locale_code}" do
    expect(number_with_precision(big_amount)).to eq(big_precision)
  end
end

describe "CurrencyLocales" do
  let(:small_amount) { 9.99 }
  let(:big_amount) { 9999.99 }

  def number_to_currency(number)
    ActionController::Base.helpers.number_to_currency(number, :locale => locale)
  end

  def number_with_precision(number)
    ActionController::Base.helpers.number_with_precision(number, :locale => locale)
  end

  locales = {
    'bg' => ['9,99 лв.', '9 999,99 лв.', '9,990', '9999,990'],
    'cs' => ['9,99 Kč', '9 999,99 Kč', '9,990', '9999,990'],
    'da' => ['DKK 9,99', 'DKK 9.999,99', '9,990', '9999,990'],
    'en-AU' => ['$9.99', '$9,999.99', '9.990', '9999.990'],
    'en-GB' => ['£9.99', '£9,999.99', '9.990', '9999.990'],
    'en-IN' => ['₹9.99', '₹9,999.99', '9.990', '9999.990'],
    'en-US' => ['$9.99', '$9,999.99', '9.990', '9999.990'],
    'es-MX' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'eu' => ['9,99 €', '9.999,99 €', '9,990', '9999,990'],
    'hr' => ['9,99 kn', '9.999,99 kn', '9,990', '9999,990'],
    'hu' => ['10 Ft', '10000 Ft', '10', '10000'],
    'ja' => ['10円', '10,000円', '9.990', '9999.990'],
    'nb' => ['9,99 kr', '9 999,99 kr', '9,99', '9999,99'],
    'pl' => ['9,99 zł', '9 999,99 zł', '9,990', '9999,990'],
    'pt-BR' => ['R$ 9,99', 'R$ 9.999,99', '9,990', '9.999,990'],
    'ro' => ['9,99 RON', '9.999,99 RON', '9,990', '9999,990'],
    'sv-SE' => ['9,99 kr', '9 999,99 kr', '9,99', '9999,99'],
    'th' => ['9.99 บาท', '9,999.99 บาท', '9.990', '9999.990'],
    'tr' => ['9,99 ₺', '9.999,99 ₺', '9,99', '9.999,99'],
    'zh-TW' => ['NT$9.99', 'NT$9,999.99', '9.990', '9999.990'],
  }

  sorted_locales = locales.sort_by { |locale, _| locale }.to_h

  sorted_locales.each do |locale, values|
    describe "locale #{locale}" do
        it_behaves_like "locale", locale, *values
    end
  end
end
