require_relative('../db/sql_runner')

class Customer

  attr_reader( :name, :address, :phone, :id )

  def initialize (params)
    @id = params["id"].to_i if params["id"]
    @name = params['name']
    @address = params['address']
    @phone = params['phone'].to_i
  end

  def save()
    sql = "INSERT INTO customers (
    name,
    address,
    phone) VALUES (
    '#{ @name }',
    '#{ @address }',
    '#{ @phone }'
    ) RETURNING*;"
    customer = SqlRunner.run(sql).first
    @id = customer['id'].to_i
  end

  def self.update(params)
    sql = "UPDATE customers SET (name, address, phone) = ('#{params['name']}', '#{params['address']}', #{params['phone']}) WHERE id = #{params['id']};"
    SqlRunner.run(sql)
  end

  def bikes()
    sql = "SELECT bikes.* FROM bikes INNER JOIN sales ON sales.bike_id = bike.id WHERE sales.customer_id = #{@id};"
    return Bike.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM customers WHERE id = #{id}"
    return Customer.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers;"
    return Customer.map_items(sql)
  end

  def self.delete(params)
    sql = "DELETE FROM customers WHERE id = #{'id'};"
    SqlRunner.run(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM customers;"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    customers = SqlRunner.run(sql)
    result = customers.map { |customer| Customer.new( customer ) }
    return result
  end

  def self.map_item(sql)
    result = Customer.map_items(sql)
    return result.first
  end

end