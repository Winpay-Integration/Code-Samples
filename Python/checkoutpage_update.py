# Description: Checkoutpage Update request sample for Checkout Page API.
import requests
import json

url = "https://sandbox-checkout.winpay.id/api/update/4282f340-51a8-40a2-a0e6-f3c95543ab6f"

payload = json.dumps({
  "customer": {
    "name": "Alisha Arunika",
    "email": "someone@email.com",
    "phone": "082342861666"
  },
  "invoice": {
    "ref": "invoice-0000001",
    "products": [
      {
        "name": "Keripik Singkong",
        "qty": 6,
        "price": "20000.00"
      },
      {
        "name": "Jasa Kirim",
        "qty": 1,
        "price": "5000.00"
      }
    ]
  },
  "back_url": "https://google.com",
  "interval": 3600
})
headers = {
  'X-Winpay-Timestamp': '2026-11-24T17:07:05+07:00',
  'X-Winpay-Key': 'xxxxxxxx',
  'X-Winpay-Signature': 'xxxxxxxxxxxxxxxxx',
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

response = requests.request("PUT", url, headers=headers, data=payload)

print(response.text)
