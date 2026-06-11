# Description: SNAP QRIS Generate request sample for SNAP API.
import requests
import json

url = "https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-generate"

payload = json.dumps({
  "partnerReferenceNo": "ref-0000000-0417",
  "terminalId": "TERM KEDUA",
  "amount": {
    "value": "50000.00",
    "currency": "IDR"
  },
  "validityPeriod": "2023-08-28T23:08:56+07:00",
  "additionalInfo": {
    "isStatic": False
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
