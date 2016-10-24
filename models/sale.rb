require_relative('../db/sql_runner')

class Sale

  attr_reader( :id, :bike_id, :customer_id )

  def initialize( params )
    @id = params['id'].to_i
    @bike_id = params['bike_id'].to_i
    @customer_id = params['customer_id'].to_i
  end

  def save()
    sql = "INSERT INTO sales (bike_id, customer_id) VALUES (#{@bike_id}, #{@customer_id}) RETURNING *;"
    sale = SqlRunner.run(sql).first
    @id = sale['id'].to_i
  end

  def bike()
    sql = "SELECT * FROM bikes WHERE bikes.id = #{@bike_id}"
    bike = Bike.map_item(sql)
    return bike
  end

  def customer()
    sql = "SELECT * FROM customers WHERE customers.id = #{@customer_id}"
    customer = Customer.map_item(sql)
    return customer
  end

  def self.all()
    sql = "SELECT * FROM sales"
    return Sale.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM sales"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    sales = SqlRunner.run(sql)
    result = sales.map { |sale| Sale.new( sale ) }
    return result
  end

  def self.map_item(sql)
    result = Sale.map_items(sql)
    return result.first
  end
end