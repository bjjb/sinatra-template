#!/usr/bin/env ruby
require 'sinatra'

get '/index.html' do
  haml :index
end

get '/application.js' do
  coffee :application
end

get '/application.css' do
  scss :application
end
