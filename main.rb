require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/bikes_controller')


get '/' do
  redirect to('/inventory')
end


get '/inventory' do
  erb(:'inventory')

end