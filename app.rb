require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/things')
require('pry')

get ('/')do
  @description = "Make a list of your favorite things"
  erb(:input)
end
post ('/output')do
  @riddle_one = params.fetch("food")
  @riddle_two = params.fetch("car")

things = Things.new(@riddle_one, @riddle_two)
  @riddle_output = things._method()
  erb(:output)
end
