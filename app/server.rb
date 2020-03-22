require 'sinatra'
require 'byebug'
require_relative 'models/item'

set :bind, '0.0.0.0'
set :port, 80

get '/' do
  redirect '/items'
end

get '/items' do
  @items = Item.all
  erb :items
end

post '/items' do
  item = Item.new(params['item_text'])
  Item.save(item)

  redirect '/items'
end