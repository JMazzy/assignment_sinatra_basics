#!/usr/bin/env ruby
require 'sinatra'
require 'pry-byebug'
require 'helpers/rps_helper.rb'

helpers RPSHelper

get '/' do
  erb :play
end


post '/' do
  move = params[:move]

  if check_move(move) == :draw
    output = "It's a tie!"
  # elsif
  #   output =
  end

  erb :result, locals: {output:output}
end
