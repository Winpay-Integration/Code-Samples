# Description: Checkoutpage Delete request sample for Checkout Page API.
import requests
import json

url = "https://checkout.bmstaging.id/api/delete/4282f340-51a8-40a2-a0e6-f3c95543ab6f"

payload={}
headers = {
  'X-Winpay-Timestamp': '2026-11-24T17:07:05+07:00',
  'X-Winpay-Key': 'xxxxxxxx',
  'X-Winpay-Signature': 'xxxxxxxxxxxxxxxxx',
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

response = requests.request("DELETE", url, headers=headers, data=payload)

print(response.text)
