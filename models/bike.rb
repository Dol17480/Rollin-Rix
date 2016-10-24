require_relative('../db/sql_runner')

class Bike

  attr_reader( :category, :type, :brand_name, :model, :colour, :size, :price, :id )

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
    ) RETURNING *;"
    bike = SqlRunner.run(sql).first
    @id = bike['id'].to_i
  end


  def self.all()
    db = PG.connect( { dbname: 'bike_shop', host: 'localhost' } )
    sql = "SELECT * FROM bikes;"
    bikes = db.exec(sql)
    db.close
    return bikes.map { |bike| Bike.new( bike ) }
  end

  def update()
    sql = "UPDATE bikes SET category,
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
    WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def customers()
    sql = "SELECT customers.* FROM customers INNER JOIN sales ON sales.customer_id = customers.id WHERE sales.bike_id = #{@id};"
    customers = Customer.map_items(sql)
    return customers
  end

  def self.all()
    sql = "SELECT * FROM bikes;"
    return Bike.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM bikes WHERE id = #{id}"
    return Bike.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM bikes;"
    SqlRunner.run(sql)
  end
  
  def self.map_items(sql)
    bikes = SqlRunner.run(sql)
    result = bikes.map { |bike| Bike.new( bike ) }
    return result
  end

  def self.map_item(sql)
    result = Bike.map_items(sql)
    return result.first
  end

end