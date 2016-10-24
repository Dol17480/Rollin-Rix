# require( 'minitest/autorun' )
# require( 'minitest/rg' )
# require_relative( '../models/sales' )
# require_relative( '../models/bike' )

# class TestSales < Minitest::Test

#   def setup
#     bikes = Bike.all
#     @sales = Sale.new( bikes )
#   end

#   def test_stock_count
#     result = @sales.bikes_in_stock
#     assert_equal( 40, result )
#   end

# end