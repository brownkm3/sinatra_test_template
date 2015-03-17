class BuildingLookup<Sinatra::Base

  get '/buildings' do
    @buildings = Building.all
    erb :'buildings'
  end

  post '/lookup/' do
    @building = Building.find_by building_name: params[:building_name] || "Not found"
    erb :'buildings/show'
  end
end
