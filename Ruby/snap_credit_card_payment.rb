# Description: SNAP Credit Card Payment request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host")

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
  "partnerReferenceNo": "000000000050",
  "amount": {
    "value": "10000.00",
    "currency": "IDR"
  },
  "urlParam": [
    {
      "url": "https://test1.bi.go.id/v1/test",
      "type": "PAY_RETURN",
      "isDeeplink": "N"
    }
  ],
  "validUpTo": "2023-09-04T18:10:11+07:00",
  "additionalInfo": {
    "channel": "CC",
    "customerPhone": "0895633156874",
    "customerName": "Alisha Arunika"
  }
})

response = https.request(request)
puts response.read_body
