require_relative '../db/SqlRunner'
require 'pry-byebug'

class Transaction

  attr_accessor :id, :value, :comment, :tag_id, :merchant_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @value = options['value']
    # @date = options['date'].to_i() if options['date']
    @comment = options['comment']
    @tag_id = options['tag_id'].to_i()
    @merchant_id = options['merchant_id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM transactions;"
    transactions = SqlRunner.run(sql)
    return transactions.map {|options| Transaction.new(options)}
  end

  def save()
    sql = "INSERT INTO transactions (value, comment, tag_id, merchant_id) VALUES (#{@value}, '#{comment}', #{@tag_id}, #{@merchant_id}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM transactions WHERE id = #{id};"
    transaction = SqlRunner.run(sql)
    result = Transaction.new(transaction.first)
    return result
  end


end