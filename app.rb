require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/") do
  erb(:homepage)
end

get("/rock")
  @user_move = ["rock", "paper", "scissors"].sample

  erb(:rock)
end
