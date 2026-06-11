# Description: SNAP QRIS Query request sample for SNAP API.
import requests
import json

url = "https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query"

payload = json.dumps({
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "serviceCode": "47",
  "additionalInfo": {
    "contractId": "qree68493d-0a7e-49ba-972f-68965403a4f9"
  }
})
headers = {
  'X-TIMESTAMP': '2026-11-24T17:07:05+07:00',
  'X-SIGNATURE': 'signature',
  'X-PARTNER-ID': 'snapPartnerId',
  'X-EXTERNAL-ID': 'isoTimestamp',
  'CHANNEL-ID': 'WEB',
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)
