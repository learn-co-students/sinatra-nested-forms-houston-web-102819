require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get ("/") do
      erb :root
    end

    get ('/new') do
      erb :"pirates/new"
    end

    # get ('/pirates') do
    #   erb :"pirates/new"
    # end

    post ('/pirates') do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |atts|
        Ship.new(atts)
      end

      @ships = Ship.all
      
      erb :"pirates/show"

    end

    

    

  end
end
