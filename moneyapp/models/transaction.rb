require_relative '../db/SqlRunner'
require 'pry-byebug'

class Transaction

  attr_accessor :id, :value, :date_id, :comment, :tag_id, :merchant_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @value = options['value'].to_i if options['value']
    @date_id = options['date_id']
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
    sql = "INSERT INTO transactions (value, date_id, comment, tag_id, merchant_id) VALUES (#{@value}, '#{date_id}', '#{comment}', #{@tag_id}, #{@merchant_id}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM transactions WHERE id = #{id};"
    transaction = SqlRunner.run(sql)
    result = Transaction.new(transaction.first)
    return result
  end

  def self.total()
    sql = "SELECT * from transactions;"
    total = SqlRunner.run(sql)
    return total.map {|transaction| transaction['value'].to_i}.sum
  end

  def self.total_by_tag(id)
    sql = "SELECT * FROM transactions INNER JOIN tags ON tags.id = transactions.tag_id WHERE tag_id = #{id};"
    total = SqlRunner.run(sql)
    return total.map {|transaction| transaction['value'].to_i}.sum
  end


  #make a Class method on Transaction Class to dislay Transaction value by Merchant from Merchant Class.
    
  def self.total_by_merchant(id)
    #write SQL to join Tranasction and Merchant database tables against ID(Transaction) and Merchant ID(Merchant)
    sql = "SELECT * FROM transactions INNER JOIN merchants ON merchants.id = transactions.merchant_id WHERE merchant_id = #{id};"
    #assign local variable to running of SQL code through SqlRunner Class Ruby file
    total = SqlRunner.run(sql)
    #return "total" variable and 'map'/loop 'total' to pull out individual transactions
    #sum all 'value' properties (coverted to Integer) of Transactions called 
    return total.map {|transaction| transaction['value'].to_i}.sum
  end

  def tags()
    sql = "SELECT * FROM tags WHERE id = #{@tag_id};"
    tags = SqlRunner.run(sql)
    result = Tag.new(tags.first)
    return result
  end

  def merchants()
    sql = "SELECT * FROM merchants WHERE id = #{@merchant_id};"
    merchants = SqlRunner.run(sql)
    result = Merchant.new(merchants.first)
    return result
  end

  def update(options)
    sql = "UPDATE transactions SET
      value = '#{ options['value'] }', date_id = '#{ options['date_id']}',
      comment = '#{ options['comment'] }', tag_id = #{ options['tag_id']}, merchant_id = #{ options['merchant_id']}
      WHERE id = '#{ options['id'] }';"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM transactions WHERE id=#{ @id };"
    SqlRunner.run( sql )
  end


  def pretty_date()
    return  DateTime.parse(@date_id).strftime("%d/%m/%Y")
  end

  def self.sort_by_date
    sql = "SELECT * FROM transactions ORDER BY date_id;"
   end

  # def dec_places()
  #   result = sprintf "%.2f", @value
  #   return result
  # end

  




end