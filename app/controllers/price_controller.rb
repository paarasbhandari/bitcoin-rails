require 'net/http'
require 'json'

class PriceController < ApplicationController
  def index
  	@price = JSON[Net::HTTP.get('api.coindesk.com', '/v1/bpi/currentprice/USD.json')]["bpi"]["USD"]["rate_float"]
  end

end
