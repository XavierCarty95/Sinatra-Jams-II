require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/plays/new" do 
    @artists = Artist.all
    @instruments = Instrument.all
    erb :new

  end 

  post "/plays" do 
   
    Play.create(params)
    redirect('/')
  end 

end
