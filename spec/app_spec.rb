require File.expand_path '../spec_helper.rb', __FILE__

describe "Debug Server basic health tests" do
  
  base_urls = ['/', '/healthz', "/#{ENV['ROOT_URL']}/", "/#{ENV['ROOT_URL']}/healthz"]

  base_urls.each do |url|
    it "get base status url from #{url}" do
      get url
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.header['Content-Type']).to eq 'application/json'

      json_response = JSON.parse(last_response.body)
      expect(json_response['status']).to eq 'ok'
    end
  end
end

describe 'Debug Server ENV url tests' do

  env_urls = ['/env', "/#{ENV['ROOT_URL']}/env"]

  env_urls.each do |url|
    it "get base status url from #{url}" do
      get url
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.header['Content-Type']).to eq 'application/json'

      json_response = JSON.parse(last_response.body)
      expect(json_response['ROOT_URL']).to eq ENV['ROOT_URL']
      expect(json_response['RACK_ENV']).to eq ENV['RACK_ENV']
    end
  end
end

describe 'Debug Server namez url tests' do

  env_urls = ['/namez', "/#{ENV['ROOT_URL']}/namez"]

  env_urls.each do |url|
    it "get base status url from #{url}" do
      get url
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.header['Content-Type']).to eq 'application/json'

      json_response = JSON.parse(last_response.body)
      expect(json_response[:service_name]).to eq ENV['SRV_NAME']
    end
  end
end