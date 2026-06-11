# Description: SNAP Virtual Account Inquiry request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/inquiry-va")

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
  "trxId": "INV-000000023212x22",
  "additionalInfo": {
    "contractId": "ci302a21c9-bb4b-40c5-880d-e99691ed0af9"
  }
})

response = https.request(request)
puts response.read_body
