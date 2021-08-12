require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions 

  get '/' do
    erb:index
  end

  post '/names' do
    session['player_1'] = params[:player_1]
    session['player_2'] = params[:player_2]
    redirect to('/play')
  end
  
  get '/play' do
    p @player_1 = session['player_1']
    p @player_2 = session['player_2']
    erb:play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
