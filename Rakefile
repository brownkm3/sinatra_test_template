ENV['RACK_ENV'] ||= 'test'

require 'sinatra/activerecord/rake'

require "sinatra/activerecord"
Dir[File.expand_path('../lib/tasks/**/*.rake', __FILE__)].sort.each { |r| load r }

require_relative './building_lookup.rb'

namespace :db do
  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end
