# Description: SNAP eWallet Payment Create request sample for SNAP API.
curl -L -X POST 'https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host' \
-H 'X-TIMESTAMP: 2026-11-24T17:07:05+07:00' \
-H 'X-SIGNATURE: signature' \
-H 'X-PARTNER-ID: snapPartnerId' \
-H 'X-EXTERNAL-ID: isoTimestamp' \
-H 'CHANNEL-ID: WEB' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
  "partnerReferenceNo": "000000000050",
  "amount": {
    "value": "10000.00",
    "currency": "IDR"
  },
  "urlParam": [
    {
      "url": "https://test1.bi.go.id/v1/test",
      "type": "PAY_RETURN",
      "isDeeplink": "N"
    }
  ],
  "validUpTo": "2023-09-04T18:10:11+07:00",
  "additionalInfo": {
    "channel": "DANA",
    "customerPhone": "0895633156874",
    "customerName": "Alisha Arunika"
  }
}'
