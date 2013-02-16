# coding: utf-8
require 'csv'

class Hoge
  class << self
    def foo
      'foo'
    end

    def csv_readlines(file_path)
      CSV.readlines(file_path)
    end
  end

  def fuga
    'fuga'
  end
end
