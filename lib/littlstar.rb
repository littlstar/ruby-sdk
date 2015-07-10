# Littlstar Ruby Library
require 'net/http'
require 'json'
require 'littlstar/version'
require 'littlstar/videos'

module Littlstar

  @@apikey   = ''
  @@api_base = 'https://littlstar.com/api/v1'

  def self.apikey()
    @@apikey
  end

  def self.apikey=(key)
    @@apikey = key
  end

  def self.api_base()
    @@api_base
  end

  def self.api_base=(base)
    @@api_base = base
  end

  def self.api_url(path='')
    api_base + path
  end

  ##
  # The request() method is the heart and soul of the library. It is responsible for taking the
  # connection details from each resource class and creating the Net::HTTP object that will
  # ultimately send the appropriate request and return the response from the Littstar API server.
  def self.request(method, path)

    # create connection uri
    uri  = URI.parse(self.api_url(path))

    # create request object
    req = Net::HTTP::Get.new(uri.to_s)
    req['User-Agent']   = "ruby-sdk/#{Littlstar::VERSION}",
    req['Content-Type'] = 'application/json',
    req['X-Apikey']     = self.apikey

    # send request and build response
    Net::HTTP.start(uri.host, uri.port, use_ssl: true)  do |http|
      res = http.request(req)
      JSON.parse(res.body, symbolize_names: true)
    end

  end
end
