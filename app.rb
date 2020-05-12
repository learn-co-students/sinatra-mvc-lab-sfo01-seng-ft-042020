require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/' do
    latin = PigLatinizer.new
    @p_l = latin.piglatinize(params[:user_input])
    erb :result
  end

end