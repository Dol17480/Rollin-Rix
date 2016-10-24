require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/bikes_controller')


get '/' do
  erb :home
end
