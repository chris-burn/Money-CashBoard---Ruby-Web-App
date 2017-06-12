require_relative '../db/SqlRunner'
require 'pry-byebug'

class Merchant

  attr_accessor :id, :name, :location

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @location = options['location']
  end

  def self.all()
    sql = "SELECT * FROM merchants;"
    merchants = SqlRunner.run(sql)
    return merchants.map {|options| Merchant.new(options)}
  end

  def save()
    sql = "INSERT INTO merchants (name, location) VALUES ('#{@name}', '#{@location}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM merchants WHERE id = #{id};"
    merchant = SqlRunner.run(sql)
    result = Merchant.new(merchant.first)
    return result
  end

  def update(options)
    sql = "UPDATE merchants SET
      name = '#{ options['name'] }',
      location = '#{ options['location'] }'  
      WHERE id = '#{ options['id'] }';"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM merchants WHERE id=#{ @id };"
    SqlRunner.run( sql )
  end


end
