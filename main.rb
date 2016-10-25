require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/bikes_controller')
require_relative('controllers/sales_controller')


get '/' do
  redirect to('/inventory')
end


get '/inventory' do
  @stock_count = Bike.stock_count
  @stock_level = Bike.stock_level
  erb(:'inventory')

end