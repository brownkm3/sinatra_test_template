class BuildingLookup<Sinatra::Base

  get '/buildings' do
    @buildings = Building.all
    erb :'buildings'
  end
end
