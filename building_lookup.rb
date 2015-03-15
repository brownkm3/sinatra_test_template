require 'bundler'
Bundler.require
require 'byebug' 
require 'sinatra'

class BuildingLookup < Sinatra::Base
  Dir[File.join(Sinatra::Application.root, 'app', 'controllers', '*.rb')].each { |f| require f }
  Dir[File.join(Sinatra::Application.root, 'app', 'models',      '*.rb')].each { |f| require f }
  Dir[File.join(Sinatra::Application.root, 'app', 'services',      '*.rb')].each { |f| require f }
  Dir[File.join(Sinatra::Application.root, 'lib',                '*.rb')].each { |f| require f }

  set :views, proc { File.join(Sinatra::Application.root, 'app', 'views') }

  def self.configuration
    @config ||= Configuration.load
  end
end
