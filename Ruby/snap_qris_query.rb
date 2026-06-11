# Description: SNAP QRIS Query request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query")

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
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "serviceCode": "47",
  "additionalInfo": {
    "contractId": "qree68493d-0a7e-49ba-972f-68965403a4f9"
  }
})

response = https.request(request)
puts response.read_body
