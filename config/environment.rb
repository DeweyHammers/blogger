ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

#ActiveRecord::Base.establish_connection(
#  :adapter => "postgresql",
#  :database => "db/#{ENV['SINATRA_ENV']}.sql"
#)

set :database_file, "database.yml"

require './app/controllers/application_controller'
require_all 'app'