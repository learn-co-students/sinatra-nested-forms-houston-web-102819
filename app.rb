require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      
      erb :'pirates/new'

      # erb :'new'

    end

    post "/pirates" do
      
      @new_pirate = Pirate.new(params[:pirate][:name],params[:pirate][:height],params[:pirate][:weight])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship[:name],ship[:type], ship[:booty])
      end
      @ships = Ship.all
      erb :'pirates/show'

    end

  end

end
