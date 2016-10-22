require( 'pry-byebug')
require( 'pg' )

class Bike

  attr_reader( :category, :type, :brand_name, :model, :colour, :size, :price )

  def initialize (params)
    @id = params["id"].to_i if params["id"]
    @category = params['category']
    @type = params['type']
    @brand_name = params['brand_name']
    @model = params['model']
    @colour = params['colour']
    @size = params['size']
    @price = params['price'].to_i
    
  end

  def self.all()
    db = PG.connect( { dbname: 'bike_shop', host: 'localhost' } )
    sql = "SELECT * FROM bikes;"
    orders = db.exec(sql)
    db.close
    return bikes.map { |bike| Bike.new( bike ) }
  end

  def save()
    db = PG.connect( { dbname: 'bike_shop', host: 'localhost' } )
    sql = "INSERT INTO bikes (
      category,
      type,
      brand_name,
      model,
      colour,
      size,
      price ) VALUES (
      '#{ @category }',
      '#{ @type }',
      '#{ @brand_name }',
      '#{ @model }',
      '#{ @colour }',
      '#{ @size }',
      '#{ @price }'
      );"
    db.exec(sql)
    db.close
  end



end