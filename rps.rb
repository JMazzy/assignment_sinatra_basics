#!/usr/bin/env ruby
require 'sinatra'
require 'pry-byebug'
require './helpers/rps_helper.rb'

helpers RPSHelper

get '/' do
  erb :play
end

post '/' do
  move = params[:move]
  result = check_move(move)

  if result[0] == :draw
    output = "It's a tie!"
  elsif result[0] == :win
    output = "You Won!"
  else
    output = "Sorry you lose."
  end

  erb :result, locals: {output: output, move: move, compmove: result[1]}
end
