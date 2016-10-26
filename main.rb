require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/bikes_controller')
require_relative('controllers/sales_controller')
require_relative('controllers/customers_controller.rb')

get '/' do
  redirect to('/inventory')
end


get '/inventory' do
  @stock_count = Bike.stock_count
  @stock_level = Bike.stock_level
  @stock_mens = Bike.stock_category('Mens')
  @stock_womens = Bike.stock_category('Womens')
  @stock_kids = Bike.stock_category('Kids')
  erb(:'inventory')

end