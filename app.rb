require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @original = params[:user_phrase]
        
        erb :new_view
    end
end