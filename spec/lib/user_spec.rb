# coding: utf-8
require 'spec_helper'

describe User do
  describe '.foo' do
    subject{ User.foo }
    it { should == 'foo' }
  end

  describe '#fuga' do
    let(:user){ create(:user) }
    subject{ user.fuga }
    it { should == 'fuga' }
  end

  describe '#piyo mock' do
    let!(:user){
      #u = mock(:user)
      u = create(:user)
      u.stub!(:piyo).and_return('stub')
      u
    }
    subject{ user.piyo }
    it { should == 'stub' }
  end
end
