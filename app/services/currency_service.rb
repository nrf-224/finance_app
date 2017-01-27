require 'net/http'
require 'json'

class CurrencyService

  def initialize

  end

  def getcourse(currency)
  url = "http://api.fixer.io/latest?base=#{currency}"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  parsed = JSON.parse(response)

  end

end

