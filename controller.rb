require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')

get '/' do
  erb(:home)
end

get '/play/:shape1/:shape2' do
  shape1 = params[:shape1]
  shape2 = params[:shape2]
  game = Game.new(shape1, shape2)
  @winner = game.play()
  erb(:result)
end
