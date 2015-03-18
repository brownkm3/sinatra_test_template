require 'byebug'

class BuildingLookup<Sinatra::Base

  get '/buildings' do
    @buildings = Building.all
    erb :'buildings'
  end

  get '/show' do
    debugger
    @building = Building.find params[:id]
    erb :'buildings/show'
  end

  post '/lookup/' do
    @building = Building.find_by building_name: params[:building_name] || "Not found"
    erb :'buildings/show'
  end

  get '/buildings/new' do
    erb :'buildings/new'
  end

  post '/buildings/add/' do 
    @building = Building.create(building_name: params[:building_name], building_code: params[:building_code])
    if @building.valid? 
      @buildings = Building.all
      erb :'buildings'
    else
      erb :'buildings/new'
    end
  end
end
