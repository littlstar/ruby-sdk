# Littlstar Ruby Library
require 'net/http'
require 'uri'
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
  def self.request(method, path, payload={}, headers={})

    # prepare headers
    headers = {
      'User-Agent'   => "ruby-sdk/#{Littlstar::VERSION}",
      'Content-Type' => 'application/json',
      'X-Apikey'     => self.apikey
    }.merge(headers)

    # create the http connection object
    uri  = URI.parse(self.api_url(path))
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    # open our HTTP connection and send the appropriate request type
    # the block will automatically close our connection so we don't have to
    http.start do |connection|
      response = connection.send_request(method, uri.path, nil, headers)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
