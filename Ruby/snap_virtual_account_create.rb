# Description: SNAP Virtual Account Create request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["X-TIMESTAMP"] = "2026-11-24T17:07:05+07:00"
request["X-SIGNATURE"] = "signature"
request["X-PARTNER-ID"] = "snapPartnerId"
request["X-EXTERNAL-ID"] = "isoTimestamp"
request["CHANNEL-ID"] = "WEB"
request["Content-Type"] = "application/json"
request["Accept"] = "application/json"
request.body = JSON.dump({
  "customerNo": "000003212",
  "virtualAccountName": "Alisha Arunika",
  "trxId": "INV-000000023212x22",
  "totalAmount": {
    "value": "25000.00",
    "currency": "IDR"
  },
  "virtualAccountTrxType": "c",
  "expiredDate": "2023-09-01T19:30:14+07:00",
  "additionalInfo": {
    "channel": "BRI"
  }
})

response = https.request(request)
puts response.read_body
