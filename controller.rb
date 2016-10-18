require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/shoo_order'

get '/order/new' do
  erb(:new)
end

post '/order' do
  @order = ShooOrder.new(params)
  @order.save
  erb(:create)
end

get '/order' do
  @orders = ShooOrder.all()
  erb(:index)
end