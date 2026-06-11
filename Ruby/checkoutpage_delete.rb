# Description: Checkoutpage Delete request sample for Checkout Page API.
require "uri"
require "json"
require "net/http"

url = URI("https://checkout.bmstaging.id/api/delete/4282f340-51a8-40a2-a0e6-f3c95543ab6f")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Delete.new(url)
request["X-Winpay-Timestamp"] = "2026-11-24T17:07:05+07:00"
request["X-Winpay-Key"] = "xxxxxxxx"
request["X-Winpay-Signature"] = "xxxxxxxxxxxxxxxxx"
request["Content-Type"] = "application/json"
request["Accept"] = "application/json"

response = https.request(request)
puts response.read_body
