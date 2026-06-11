# Description: SNAP QRIS Generate request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-generate")

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
  "partnerReferenceNo": "ref-0000000-0417",
  "terminalId": "TERM KEDUA",
  "amount": {
    "value": "50000.00",
    "currency": "IDR"
  },
  "validityPeriod": "2023-08-28T23:08:56+07:00",
  "additionalInfo": {
    "isStatic": false
  }
})

response = https.request(request)
puts response.read_body
