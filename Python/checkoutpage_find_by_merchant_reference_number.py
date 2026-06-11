# Description: Checkoutpage Find by Merchant Reference Number request sample for Checkout Page API.
import requests
import json

url = "https://checkout.bmstaging.id/api/findByRef/1257582293"

payload={}
headers = {
  'X-Winpay-Timestamp': '2026-11-24T17:07:05+07:00',
  'X-Winpay-Key': 'xxxxxxxx',
  'X-Winpay-Signature': 'xxxxxxxxxxxxxxxxx',
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)
