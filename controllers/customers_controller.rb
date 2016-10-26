require 'pry-byebug'
require_relative('../models/customer')


#index
get '/customers' do
  @customers = Customer.all()
  erb(:'customers/index')
end

#new
get '/customers/new' do
  erb(:'customers/new')
end

#create
post '/customers' do
  @customer = Customer.new(params)
  @customer.save
  redirect to("/customers")
end

#show
get '/customers/:id' do
  @customer = Customer.find(params['id'])
  erb(:'customers/show')
end

#edit
get '/customers/:id/edit' do
  @customer = Customer.find(params[:id] )
    erb( :'customers/edit' )
end

#update
put '/customers/:id' do
  Customer.update(params)
  redirect to( "/customers/#{params[:id]}")
end

#delete
delete '/customers/:id' do
  Customer.destroy( params[:id] )
  redirect to('/customers')
end