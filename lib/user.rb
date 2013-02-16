# coding: utf-8

class User < ActiveRecord::Base

  validates_presence_of :email

  #default_scope -> do
  #end

  #scope :x, ->() do
  #  where('1=1')
  #end

  class << self
    def foo
      'foo'
    end
  end

  def fuga
    'fuga'
  end

end
