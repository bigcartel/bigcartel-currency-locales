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
    'ae' => ['AED 9.99', 'AED 9,999.99', '9.99', '9,999.99'],
    'bg' => ['9,99лв', '9 999,99лв', '9,99', '9 999,99'],
    'cs' => ['9,99 Kč', '9 999,99 Kč', '9,99', '9 999,99'],
    'da' => ['9,99 kr', '9.999,99 kr', '9,99', '9.999,99'],
    'en-AU' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'en-GB' => ['£9.99', '£9,999.99', '9.99', '9,999.99'],
    'en-IN' => ['₹9.99', '₹9,999.99', '9.99', '9,999.99'],
    'en-PH' => ['₱9.99', '₱9,999.99', '9.99', '9,999.99'],
    'en-US' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'es-MX' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'eu' => ['9,99 €', '9.999,99 €', '9,99', '9.999,99'],
    'gsw-CH' => ['CHF 9.99', 'CHF 9\'999.99', '9.99', '9\'999.99'],
    'hr' => ['9,99 kn', '9.999,99 kn', '9,99', '9.999,99'],
    'hu' => ['10 Ft', '10 000 Ft', '9,99', '9 999,99'],
    'il' => ['₪ 9.99', '₪ 9,999.99', '9.99', '9,999.99'],
    'ja' => ['¥10', '¥10,000', '9.99', '9,999.99'],
    'ms-MY' => ['RM 9.99', 'RM 9,999.99', '9.99', '9,999.99'],
    'nb' => ['9,99 kr', '9 999,99 kr', '9,99', '9 999,99'],
    'pl' => ['9,99 zł', '9 999,99 zł', '9,99', '9 999,99'],
    'pt-BR' => ['R$ 9,99', 'R$ 9.999,99', '9,99', '9.999,99'],
    'ro' => ['9,99 lei', '9.999,99 lei', '9,99', '9.999,99'],
    'sv-SE' => ['9,99 kr', '9 999,99 kr', '9,99', '9 999,99'],
    'th' => ['฿ 9.99', '฿ 9,999.99', '9.99', '9,999.99'],
    'tr' => ['₺9,99', '₺9.999,99', '9,99', '9.999,99'],
    'zh-TW' => ['NT$ 9.99', 'NT$ 9,999.99', '9.99', '9,999.99'],
  }

  sorted_locales = locales.sort_by { |locale, _| locale }.to_h

  sorted_locales.each do |locale, values|
    describe "locale #{locale}" do
        it_behaves_like "locale", locale, *values
    end
  end
end
