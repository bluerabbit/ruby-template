# coding: utf-8
require 'spec_helper'

describe Hoge do
  describe '.foo' do
    subject{ Hoge.foo }
    it { should == 'foo' }
  end

  describe '.csv_readlines' do
    subject{ Hoge.csv_readlines('spec/fixtures/test/hoge.csv').size }
    it { should == 2 }
  end

  describe '#fuga' do
    let(:hoge){ Hoge.new }
    subject{ hoge.fuga }
    it { should == 'fuga' }
  end

  describe "VCRを試す" do
    it "gets a response from an api" do
      VCR.use_cassette 'model/api_response' do
        require 'nokogiri'
        require 'open-uri'
        response = Nokogiri::HTML(open('http://localhost:3000/'))
        response.text.should == 'Hello World'
      end
    end
  end
end
