require 'spec_helper'

shared_examples_for "locale" do |locale, small_currency, big_currency, small_precision, big_precision|
  let(:locale) { locale }

  it "should translate the small amount to currency" do
    expect(number_to_currency(small_amount)).to eq(small_currency)
  end

  it "should translate the big amount to currency" do
    expect(number_to_currency(big_amount)).to eq(big_currency)
  end

  it "should translate the small amount with precision" do
    expect(number_with_precision(small_amount)).to eq(small_precision)
  end

  it "should translate the big amount with precision" do
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
    'cs' => ['9,99Kč', '9999,99Kč', '9,99', '9999,99'],
    'da' => ['kr9,99', 'kr9.999,99', '9,99', '9.999,99'],
    'en-AU' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'en-GB' => ['£9.99', '£9,999.99', '9.99', '9,999.99'],
    'en-IN' => ['₹9.99', '₹9,999.99', '9.99', '9,999.99'],
    'en-PH' => ['₱9.99', '₱9,999.99', '9.99', '9,999.99'],
    'es-MX' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'en-US' => ['$9.99', '$9,999.99', '9.99', '9,999.99'],
    'eu' => ['€9.99', '€9,999.99', '9.99', '9,999.99'],
    'gsw-CH' => ['CHF9.99', 'CHF9,999.99', '9.99', '9,999.99'],
    'hu' => ['10Ft', '10000Ft', '9,99', '9999,99'],
    'id' => ['Rp9,99', 'Rp9.999,99', '9,99', '9.999,99'],
    'it' => ['€9,99', '€9.999,99', '9,99', '9.999,99'],
    'ko' => ['₩9.99', '₩9,999.99', '9.99', '9,999.99'],
    'nl' => ['€9,99', '€9.999,99', '9,99', '9.999,99'],
    'pt' => ['R$9,99', 'R$9.999,99', '9,99', '9.999,99'],
    'ro' => ['9,99Lei', '9.999,99Lei', '9,99', '9.999,99'],
    'ru' => ['9,99р.', '9.999,99р.', '9,99', '9.999,99'],
    'sk' => ['9,99€', '9.999,99€', '9,99', '9.999,99'],
    'th' => ['฿9.99', '฿9,999.99', '9.99', '9,999.99'],
    'tr' => ['9,99₺', '9.999,99₺', '9,99', '9.999,99'],
    'uk' => ['9,99₴', '9.999,99₴', '9,99', '9.999,99'],
    'vi' => ['9,99₫', '9.999,99₫', '9,99', '9.999,99'],
    'zh-CN' => ['¥9.99', '¥9,999.99', '9.99', '9,999.99'],
    'zh-HK' => ['HK$9.99', 'HK$9,999.99', '9.99', '9,999.99'],
    'zh-SG' => ['S$9.99', 'S$9,999.99', '9.99', '9,999.99'],
    'zh-TW' => ['NT$9.99', 'NT$9,999.99', '9.99', '9,999.99'],
  }

  locales.each do |locale, values|
    it_behaves_like "locale", locale, *values
  end
end

