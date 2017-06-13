require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')

require_relative ('models/merchant')
require_relative ('models/tag')
require_relative ('models/transaction')
require_relative ('models/user')

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

get '/transaction/:id' do
  @transactions = Transaction.find(params[:id])
  erb(:transaction_show)
end

post '/transactions' do
  @transaction = Transaction.new(params)
  @transaction.save()
  erb(:transaction_create)
end

get '/merchant/new' do
  erb(:merchant_new)
end

get '/merchants' do
  @merchants = Merchant.all
  erb(:merchant_index)
end

post '/merchants' do
  @merchant = Merchant.new(params)
  @merchant.save()
  erb(:merchant_create)
end

get '/tags' do
  @tags = Tag.all
  @transactions = Transaction.all
  erb(:tag_index)
end

get '/merchant/:id' do
  @merchants = Merchant.find(params[:id])
  erb(:merchant_show)
end

get '/tag/new' do
  erb(:tag_new)
end


post '/tags' do
  @tag = Tag.new(params)
  @tag.save()
  erb(:tag_create)
end

get '/merchant/:id/edit' do
  @merchant = Merchant.find(params[:id])
  erb(:merchant_edit)
end

post '/merchant/:id' do
  @merchant = Merchant.new(params)
  @merchant.update(params)
  erb(:merchant_update)
end

get '/tag/:id/edit' do
  @tag = Tag.find(params[:id])
  erb(:tag_edit)
end

post '/tag/:id' do
  @tag = Tag.new(params)
  @tag.update(params)
  erb(:tag_update)
end

get '/transaction/:id/edit' do
  @transaction = Transaction.find(params[:id])
  @merchants = Merchant.all
  @tags = Tag.all
  erb(:transaction_edit)
end

post '/transaction/:id' do
  @transaction = Transaction.new(params)
  @transaction.update(params)
  erb(:transaction_update)
end

post '/transaction/:id/delete' do
  @transaction = Transaction.find(params[:id])
  @transaction.delete()
  redirect to "/transactions"
end

post '/merchant/:id/delete' do
  @merchant = Merchant.find(params[:id])
  @merchant.delete()
  redirect to "/merchants"
end

post '/tag/:id/delete' do
  @tag = Tag.find(params[:id])
  @tag.delete()
  redirect to "/tags"
end

# get '/user' do
#   @users = User.all
#   erb(:user_index)
# end

get '/user/:id' do
  @user = User.find(params[:id])
  erb(:user_index)
end

get '/user/:id/edit' do
  @user = User.find(params[:id])
  erb(:user_edit)
end

post '/user/:id' do
  @user = User.new(params)
  @user.update(params)
  erb(:user_update)
end


