#!/usr/bin/env ruby
require 'sinatra'
require 'pry-byebug'


get '/boss' do

  erb :input
end


post '/boss' do

  input = params[:input]

  erb :output, locals: {input: input}
end