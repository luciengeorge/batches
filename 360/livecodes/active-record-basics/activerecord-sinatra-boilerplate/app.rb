require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post "/restaurants" do
  Restaurant.create(
    name: params[:name],
    address: params[:address]
  )
  redirect '/'
end

# get => read
# post => create
# patch/put => update
# delete => destroy
# Read all
# get /restaurants
# Read one
# get /restaurants/:id
# create
# post /restaurants
# update
# patch/put /restaurants/:id
# delete
# delete /restaurants/:id
