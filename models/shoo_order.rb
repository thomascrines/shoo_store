require_relative('../db/sql_runner')

class ShooOrder

attr_reader :full_name, :address, :quantity, :size

def initialize(params)
  @id = params['id'].to_i
  @full_name = params['full_name']
  @address = params['address']
  @quantity = params['quantity'].to_i
  @size = params['size'].to_i
end

def save()
  sql = "INSERT INTO orders (full_name, address, quantity, size) VALUES ('#{@full_name}', '#{@address}', #{@quantity}, #{@size}) RETURNING *"
  result = SqlRunner.run(sql)
  @id = result.first['id'].to_i
end

def self.all
  sql = "SELECT * FROM orders"
  shoos = SqlRunner.run(sql)
  result = shoos.map{|shoo| ShooOrder.new(shoo)}
  return result
end


end