ENV['RACK_ENV'] = 'test'
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require File.expand_path('../../building_lookup.rb', __FILE__)

require 'capybara/rspec'
require 'database_cleaner'
require 'byebug'
require 'rack/test'
require 'rspec'
require 'shoulda-matchers'

Dir[File.join(Sinatra::Application.root, 'spec', 'support', '**', '*.rb')].each { |f| require f }

set :run,           false
set :raise_errors,  true
set :logging,       false

I18n.enforce_available_locales = false

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.before :each do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end

def app
  BuildingLookup
end
