# Description: SNAP Virtual Account Create request sample for SNAP API.
import requests
import json

url = "https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va"

payload = json.dumps({
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
