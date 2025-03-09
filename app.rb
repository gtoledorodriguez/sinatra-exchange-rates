require "sinatra"
require "sinatra/reloader"
require "dotenv/load"

EXCHANGE_RATE_KEY = ENV.fetch("EXCHANGE_RATE_KEY")

get("/") do
  @currency_list = []
  @currency_list.push("AED")
  erb(:main)
end

get("/:currency_symbol") do
  @currency_symbol = params.fetch("currency_symbol")
  @currency_list = []
  @currency_list.push("MXN")

  erb(:convert_list)
end

get("/:currency_symbol/:second_currency_symbol") do
  @currency_symbol = params.fetch("currency_symbol")
  @second_currency_symbol = params.fetch("second_currency_symbol")
  @conversion = 23
  
  erb(:convert_to)
end
