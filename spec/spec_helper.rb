require 'pry'
require 'faker'
require 'factory_girl'
require 'database_cleaner'

APP_ROOT = File.expand_path(File.dirname(__FILE__) + '/../')
require "#{APP_ROOT}/db/database"
Dir[("#{APP_ROOT}/lib/**/*.rb")].each {|f| require f}
Dir[("#{APP_ROOT}/spec/factories/**/*.rb")].each {|f| require f}
Dir[("#{APP_ROOT}/spec/support/*.rb")].each {|f| require f}

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include FactoryGirl::Syntax::Methods
end
