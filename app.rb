require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/") do
  erb(:homepage)
end

@comp_move = ["rock", "paper", "scissors"].sample


get("/rock")
  if @comp_move == "rock"
    @outcome = "We tied!"
  elsif @comp_move == "paper"
    @outcome = "We win!"
  else @outcome = "We lost!"
  end
    
  erb(:rock)
end
