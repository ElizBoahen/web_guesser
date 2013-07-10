require 'sinatra'
require 'sinatra/reloader'

number = (1 + rand(99)).to_s

get "/" do 
	if params["guess"].to_i == 0
		guess_string = "That's not a number. Please guess a number between 1 and 100"
	elsif params["guess"] == nil
		guess_empty = " " 	
	elsif params["guess"].to_i > number.to_i + 10
		guess = "You're guess is WAY too high!!"
	elsif params["guess"].to_i > number.to_i
		guess = "You're guess is too high."	
	elsif params["guess"].to_i < number.to_i + 10
		guess = "You're guess is WAY too low!!"	
	elsif params["guess"].to_i < number.to_i
		guess = "You're guess is too low."
	else
		guess = "You are Correct"
	end
	erb :index, :locals => {:number => number, :guess => guess}
end