require 'sinatra'
require 'sinatra/activerecord'

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

get '/' do
  @campaigns = Campaign.all.order(name: :asc)

  erb :index
end

get '/day' do
  erb :'/day/index'
end
