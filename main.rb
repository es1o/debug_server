require 'sinatra'
require 'sinatra/json'
require 'json'

set :bind, '0.0.0.0'

get '/' do
    json :status => :ok
end

get '/healthz' do
    json :status => :ok
end

get '/env' do
    json ENV.to_hash
end