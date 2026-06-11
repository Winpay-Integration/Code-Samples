# Description: Checkoutpage Create request sample for Checkout Page API.
curl -L -X POST 'https://sandbox-checkout.winpay.id/api/create' \
-H 'X-Winpay-Timestamp: 2026-11-24T17:07:05+07:00' \
-H 'X-Winpay-Key: xxxxxxxx' \
-H 'X-Winpay-Signature: xxxxxxxxxxxxxxxxx' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
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
}'
