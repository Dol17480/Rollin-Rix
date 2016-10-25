require 'pry-byebug'
require_relative('../models/bike')

#index
get '/bikes' do
  @bikes = Bike.all
  erb(:'bikes/index')
end

#new
get '/bikes/new' do
  erb(:'bikes/new')
end

#create
post '/bikes' do
  @bike = Bike.new(params)
  @bike.save
  redirect to("/bikes")
end

#show
get '/bikes/:id' do
  @bike = Bike.find(params['id'])
  erb(:'bikes/show')
end

#edit
get '/bikes/:id/edit' do
  @bike = Bike.find( params[:id] )
    erb( :'bikes/edit' )
end

#update
post '/bikes/:id' do
  @bikes = Bike.update( params)
  redirect to( "/bikes/#{params[:id]}")
end

#delete
delete '/bikes/:id' do
  Bike.destroy( params[:id] )
  redirect to('/bikes')
end















