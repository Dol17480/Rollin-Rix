require 'pry-byebug'
require_relative('../models/sale')

#index
get '/sales' do
  @sales = Sale.all()
  erb(:'sales/index')
end