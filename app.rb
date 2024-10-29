require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do

  @random_move = ["rock","paper","scissors"].sample
  @outcome = "blank"

  if @random_move == "paper"
    @outcome = "We lost!"
  elsif @random_move == "scissors"
    @outcome = "We won!"
  else 
    @outcome = "We tied!"
  end

  erb(:rock)
end

get("/paper") do

  @random_move = ["rock","paper","scissors"].sample
    @outcome = "blank"

    if @random_move == "paper"
      @outcome = "We tied!"
    elsif @random_move == "scissors"
      @outcome = "We lost!"
    else 
      @outcome = "We won!"
    end

  erb(:paper)
end

get("/scissors") do

  @random_move = ["rock","paper","scissors"].sample
    @outcome = "blank"

    if @random_move == "paper"
      @outcome = "We won!"
    elsif @random_move == "scissors"
      @outcome = "We tied!"
    else 
      @outcome = "We lost!"
    end
    
  erb(:scissors)
end
