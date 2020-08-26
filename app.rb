require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :index
    end

    get '/new' do
      erb :create_puppy
    end

    post '/pirate' do
      @pirate = pirate.new(params[:pirate])
     
      params[:pirate][:ships].each do |details|
        Course.new(details)
      end
     
      @ships = Ship.all
     
      erb :pirate
    end
  end
end
