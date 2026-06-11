# Description: SNAP eWallet Payment Cancel request sample for SNAP API.
import requests
import json

url = "https://sandbox-api.bmstaging.id/snap/v1.0/debit/cancel"

payload = json.dumps({
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "reason": "Alasan cancel",
  "additionalInfo": {
    "contractId": "so73279ac4-4c4f-443b-9990-80e5da6cc374",
    "channel": "SPAY"
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
