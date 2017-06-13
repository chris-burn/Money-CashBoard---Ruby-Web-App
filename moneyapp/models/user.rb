require_relative '../db/SqlRunner'
require 'pry-byebug'

class User

  attr_accessor :id, :budget

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @budget = options['budget'].to_i
  end

  def self.all()
    sql = "SELECT * FROM users;"
    users = SqlRunner.run(sql)
    return users.map {|options| User.new(options)}
  end

  def save()
    sql = "INSERT INTO users (budget) VALUES (#{@budget}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM users WHERE id = #{id};"
    user = SqlRunner.run(sql)
    result = User.new(user.first)
    return result
  end

  def update(options)
    sql = "UPDATE users SET
      budget = '#{ options['budget'] }' 
      WHERE id = '#{ options['id'] }';"
    SqlRunner.run( sql )
  end

  def self.total()
    sql = "SELECT * from users;"
    total = SqlRunner.run(sql)
    return total.map {|transaction| transaction['budget'].to_i}.sum
  end



end