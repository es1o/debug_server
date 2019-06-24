require 'sinatra'
require 'sinatra/json'
require 'json'

set :bind, '0.0.0.0'

get '/' do
    json :status => :ok
end

get "/#{ENV['ROOT_URL']}/" do
    json :status => :ok
end

get '/healthz' do
    json :status => :ok
end

get "/#{ENV['ROOT_URL']}/healthz" do
    json :status => :ok
end

get '/env' do
    json ENV.to_hash
end

get "/#{ENV['ROOT_URL']}/env" do
    json ENV.to_hash
end

get '/namez' do
    json :service_name => ENV['SRV_NAME']
end

get "/#{ENV['ROOT_URL']}/namez" do
    json :service_name => ENV['SRV_NAME']
end
