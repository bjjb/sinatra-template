#!/usr/bin/env ruby
require './app.rb'
require 'test/unit'
require 'rack/test'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index
    get '/index.html'
    assert_equal 200, last_response.status
    assert_match 'text/html', last_response['Content-Type']
  end

  def test_js
    get '/application.js'
    assert_equal 200, last_response.status
    assert_match 'application/javascript', last_response['Content-Type']
  end
  
  def test_css
    get '/application.css'
    assert_equal 200, last_response.status
    assert_match 'text/css', last_response['Content-Type']
  end
end
