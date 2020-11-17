require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require 'yaml'

before do
  @users_info_hash = Psych.load_file("users.yaml")
end

helpers do 
  def count_interests
    interest_counter = 0 
    @users_info_hash.each do | user_name, user_info |
      interest_counter += user_info[:interests].count
    end
    interest_counter
  end
end

get "/" do
  redirect "/users"
end

get "/users" do
  erb :users
end

get "/:name" do
  @name = params[:name]
  erb :user
end 