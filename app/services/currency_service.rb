require 'net/http'
require 'json'

  def getcourse(cur)
  url = "http://api.fixer.io/latest?base=#{cur}&symbols=RUB"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  parsed = JSON.parse(response)
  course = parsed["rates"]["RUB"]
  end

puts getcourse('USD')
puts getcourse('EUR') 

