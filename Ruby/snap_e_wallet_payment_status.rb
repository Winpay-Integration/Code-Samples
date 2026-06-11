# Description: SNAP eWallet Payment Status request sample for SNAP API.
require "uri"
require "json"
require "net/http"

url = URI("https://sandbox-api.bmstaging.id/snap/v1.0/debit/status")

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
  "additionalInfo": {
    "contractId": "so73279ac4-4c4f-443b-9990-80e5da6cc374",
    "channel": "SPAY"
  }
})

response = https.request(request)
puts response.read_body
