# Description: SNAP QRIS Generate request sample for SNAP API.
curl -L -X POST 'https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-generate' \
-H 'X-TIMESTAMP: 2026-11-24T17:07:05+07:00' \
-H 'X-SIGNATURE: signature' \
-H 'X-PARTNER-ID: snapPartnerId' \
-H 'X-EXTERNAL-ID: isoTimestamp' \
-H 'CHANNEL-ID: WEB' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
  "partnerReferenceNo": "ref-0000000-0417",
  "terminalId": "TERM KEDUA",
  "amount": {
    "value": "50000.00",
    "currency": "IDR"
  },
  "validityPeriod": "2023-08-28T23:08:56+07:00",
  "additionalInfo": {
    "isStatic": false
  }
}'
