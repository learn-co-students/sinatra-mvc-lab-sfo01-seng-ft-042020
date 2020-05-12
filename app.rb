require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end 
    post '/piglatinize' do 
        #phrase = Piglatinizer.new
        phrase = PigLatinizer.new
        @pig_latinize = phrase.piglatinize(params["user_phrase"])
        #@pig_latinize = Piglatinizer.new.piglatinize(params["user_phrase"])
        #@analyzed_phrase = Piglatinizer.new(params[:user_phrase])
        erb :piglatinize
    end 
end