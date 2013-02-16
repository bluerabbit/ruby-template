# coding: utf-8
require 'rspec/core/rake_task'
require 'active_record'
require 'yaml'
require 'logger'
RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Migrate the database through scripts in db/migrate Target specific version with VERSION=x'
task :migrate => :environment do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  File.open('db/schema.rb', "w:utf-8") do |file|
    ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
  end
end

desc 'Migrate the database through scripts in db/migrate drop and create'
task 'migrate:reset' => :environment do
  ActiveRecord::Migrator.migrate('db/migrate', 0)
  ActiveRecord::Migrator.migrate('db/migrate', nil)
  File.open('db/schema.rb', "w:utf-8") do |file|
    ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
  end
end

task :environment do
  ActiveRecord::Base.establish_connection(YAML::load(File.open('db/database.yml')))
  ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'a'))
end
