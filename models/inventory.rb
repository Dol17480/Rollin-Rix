require_relative('../db/sql_runner')


  def initialize( params )
    @id = params['id'].to_i
    @bike = params['bike']
  end

class Inventory

  def stock_count (bike)
   return bikes.count
  end 

  def stock_count
     bikes = @bike.map {|bike| bike.bikes}
     bikes.inject {|sum, bike| sum + bike}
    end


end