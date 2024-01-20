require 'sinatra'
require 'sinatra/activerecord'
require 'rest-client'
require 'json'
require 'better_errors'
require 'binding_of_caller'
require 'table_print'

# Set up API base URL
@url = 'https://ped.uspto.gov/api/'
@response = HTTP.get(@url)
@data = JSON.parse(@response)

get("/") do

  erb(:home)
end
