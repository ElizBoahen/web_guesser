require 'sinatra'
require 'sinatra/reloader'

get "/" do
X = (1 + rand(99)).to_s  
  "The secret number is: {X}"  
end