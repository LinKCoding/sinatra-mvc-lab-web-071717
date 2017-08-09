require_relative 'config/environment'

class App < Sinatra::Base

  post '/piglatinize' do
    #binding.pry
    erb :piglatinize
  end

  get '/' do
    erb :user_input
  end
end
