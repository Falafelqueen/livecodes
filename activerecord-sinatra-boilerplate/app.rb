require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'

get "/" do
  # get all restaurants from the repository (db)
  @restaurants = Restaurant.all
  # call view method to print out all restaurant
  erb :index
end

get "/restaurants/:id" do
  # {"id" => 4}
  # read id from the params hash 
  id = params[:id]
  # find the restaurant with the id
  @restaurant = Restaurant.find(id)
  erb :show
end
