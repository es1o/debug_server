require 'simplecov'
SimpleCov.start

require 'rack/test'
require 'rspec'
require 'json'

ENV['RACK_ENV'] = 'test'
ENV['ROOT_URL'] = 'esio'
ENV['SRv_NAME'] = 'debug_server_test'

require File.expand_path '../../main.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure { |c| c.include RSpecMixin }