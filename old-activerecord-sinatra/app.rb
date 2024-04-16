require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# As a user I can see all the restaurants
# As a user I can see details of one restaurant

# Index - list instances
# get - saying what kind HTTP request it is
# url path '/' is root path (when you land to the site)
get "/" do
  @restaurants = Restaurant.all

  erb :index # saying which view (erb file) to render
end

# Show - display one
# get - saying what kind HTTP request it is
# url path, expecting parameter 'id'
get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])

  erb :show # saying which view (erb file) to render
end
