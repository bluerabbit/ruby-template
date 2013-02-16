# -*- coding: utf-8 -*-
require 'rubygems'
require 'active_support/all'
require 'active_record'
require 'sqlite3'
require 'yaml'
require 'logger'

ActiveRecord::Base.establish_connection(YAML::load(File.open('db/database.yml')))
#ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'a'))
ActiveRecord::Base.logger = Logger.new(STDOUT)
