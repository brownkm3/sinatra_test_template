ENV['RACK_ENV'] = 'test'

require File.expand_path('../../../building_lookup.rb', __FILE__)

require 'capybara/cucumber'
require 'byebug'

require_relative 'database_cleaner'

Capybara.app = BuildingLookup

I18n.enforce_available_locales = false
