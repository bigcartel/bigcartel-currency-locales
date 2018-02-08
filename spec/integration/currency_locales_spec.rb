# encoding: utf-8

require 'spec_helper'

describe "CurrencyLocales" do  
  let(:small_amount) { 9.99 }
  let(:small_currency) { number_to_currency(small_amount) }
  let(:small_precision) { number_with_precision(small_amount) }
  
  let(:big_amount) { 9999.99 }
  let(:big_currency) { number_to_currency(big_amount) }
  let(:big_precision) { number_with_precision(big_amount) }

  def number_to_currency(number)
    ActionController::Base.helpers.number_to_currency(number, :locale => locale)
  end
  
  def number_with_precision(number)
    ActionController::Base.helpers.number_with_precision(number, :locale => locale)
  end

  describe "cs" do
    let(:locale) { 'cs' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9,99Kč'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9999,99Kč'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999,99'
    end
  end
  
  describe "da" do
    let(:locale) { 'da' }
    
    it "should translate the small amount to currency" do
      small_currency.should == 'kr9,99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == 'kr9.999,99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9.999,99'
    end
  end
  
  describe "en-AU" do
    let(:locale) { 'en-AU' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '$9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '$9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "en-GB" do
    let(:locale) { 'en-GB' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '£9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '£9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "en-PH" do
    let(:locale) { 'en-PH' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '₱9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '₱9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
    
  describe "es-MX" do
    let(:locale) { 'es-MX' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '$9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '$9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end

  describe "en-US" do
    let(:locale) { 'en-US' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '$9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '$9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "eu" do
    let(:locale) { 'eu' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '€9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '€9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "gsw-CH" do
    let(:locale) { 'gsw-CH' }
    
    it "should translate the small amount to currency" do
      small_currency.should == 'CHF9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == 'CHF9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "hu" do
    let(:locale) { 'hu' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '10Ft'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '10000Ft'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999,99'
    end
  end
  
  describe "il" do
    let(:locale) { 'il' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '₪9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '₪9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "ja" do
    let(:locale) { 'ja' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '¥10'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '¥10,000'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "ms-MY" do
    let(:locale) { 'ms-MY' }
    
    it "should translate the small amount to currency" do
      small_currency.should == 'RM9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == 'RM9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "nb" do
    let(:locale) { 'nb' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9,99kr'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9999,99kr'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999,99'
    end
  end
  
  describe "pl" do
    let(:locale) { 'pl' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9,99zł'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9999,99zł'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999,99'
    end
  end
  
  describe "pt-BR" do
    let(:locale) { 'pt-BR' }
    
    it "should translate the small amount to currency" do
      small_currency.should == 'R$9,99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == 'R$9.999,99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9.999,99'
    end
  end
  
  describe "ru" do
    let(:locale) { 'ru' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9.99 руб.'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9 999.99 руб.'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.990'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999.990'
    end
  end
  
  describe "sv-SE" do
    let(:locale) { 'sv-SE' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9,99kr'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9999,99kr'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9999,99'
    end
  end
  
  describe "th" do
    let(:locale) { 'th' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9.99฿'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9,999.99฿'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
  
  describe "tr" do
    let(:locale) { 'tr' }
    
    it "should translate the small amount to currency" do
      small_currency.should == '9,99 TL'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == '9.999,99 TL'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9,99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9.999,99'
    end
  end
  
  describe "zh-TW" do
    let(:locale) { 'zh-TW' }
    
    it "should translate the small amount to currency" do
      small_currency.should == 'NT$9.99'
    end
    
    it "should translate the big amount to currency" do
      big_currency.should == 'NT$9,999.99'
    end
    
    it "should translate the small amount with precision" do
      small_precision.should == '9.99'
    end
    
    it "should translate the big amount with precision" do
      big_precision.should == '9,999.99'
    end
  end
end
