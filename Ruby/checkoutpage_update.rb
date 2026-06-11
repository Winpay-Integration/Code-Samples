# Description: Checkoutpage Update request sample for Checkout Page API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-checkout.winpay.id/api/update/4282f340-51a8-40a2-a0e6-f3c95543ab6f")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Put.new(url)
request["X-Winpay-Timestamp"] = "2026-11-24T17:07:05+07:00"
request["X-Winpay-Key"] = "xxxxxxxx"
request["X-Winpay-Signature"] = "xxxxxxxxxxxxxxxxx"
request["Content-Type"] = "application/json"
request["Accept"] = "application/json"
request.body = JSON.dump({
  "customer": {
    "name": "Alisha Arunika",
    "email": "someone@email.com",
    "phone": "082342861666"
  },
  "invoice": {
    "ref": "invoice-0000001",
    "products": [
      {
        "name": "Keripik Singkong",
        "qty": 6,
        "price": "20000.00"
      },
      {
        "name": "Jasa Kirim",
        "qty": 1,
        "price": "5000.00"
      }
    ]
  },
  "back_url": "https://google.com",
  "interval": 3600
})

response = https.request(request)
puts response.read_body
