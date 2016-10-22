require( 'minitest/autorun' )
require_relative( '../models/sales' )

class TestSales < Minitest::Test

  def setup
    bikes = Bike.all
    @sales = Sales.new( bikes )
  end

end