#require 'dotenv/load'
require 'sinatra'
require 'sinatra/activerecord'
require 'rubygems'
require 'sinatra'
require 'active_record'

# ActiveRecord::Base.establish_connection(
#   :adapter => 'postgresql',
#   :host => 'localhost',
#   :username => "kenza",
#   :password => "ignilifeprojectacek",
#   :database =>  'ignilifeproject'
# )
# NOTE: ENV variables should be set directly in terminal for testing on localhost

# configure :development do
#   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'ignilifeproject', pool: 2, username: 'kenza', password: 'ignilifeprojectacek'}
# end

# configure :production do
#   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'ignilifeproject', pool: 2, username: 'kenza', password: 'ignilifeprojectacek'}
# end

# Talk to Facebook
get '/webhook' do
  params['hub.challenge'] if ENV["VERIFY_TOKEN"] == params['hub.verify_token']
end

get "/" do
  "Nothing to see here"
end
