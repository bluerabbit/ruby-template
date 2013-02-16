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
end
