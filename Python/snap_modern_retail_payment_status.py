# Description: SNAP Modern Retail Payment Status request sample for SNAP API.
import requests
import json

url = "https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va"

payload = json.dumps({
  "trxId": "INV-000000023212x22",
  "additionalInfo": {
    "contractId": "ci302a21c9-bb4b-40c5-880d-e99691ed0af9"
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
