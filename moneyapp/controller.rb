require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')

require_relative ('models/merchant')
require_relative ('models/tag')
require_relative ('models/transaction')

get '/' do
  erb(:home)
end

get '/transactions' do
  @transactions = Transaction.all
  erb(:transaction_index)
end

get '/transaction/new' do
  @merchants = Merchant.all
  @tags = Tag.all
  erb(:transaction_new)
end

get '/merchant/new' do
  erb(:merchant_new)
end

get '/merchants' do
  @merchants = Merchant.all
  erb(:merchant_index)
end

