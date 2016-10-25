require 'pry-byebug'
require_relative('../models/sale')
require_relative('../models/bike')

#index
get '/sales' do
  @sales = Sale.all()
  erb(:'sales/index')
end