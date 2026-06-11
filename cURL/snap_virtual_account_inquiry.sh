# Description: SNAP Virtual Account Inquiry request sample for SNAP API.
curl -L -X POST 'https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va' \
-H 'X-TIMESTAMP: 2026-11-24T17:07:05+07:00' \
-H 'X-SIGNATURE: signature' \
-H 'X-PARTNER-ID: snapPartnerId' \
-H 'X-EXTERNAL-ID: isoTimestamp' \
-H 'CHANNEL-ID: WEB' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
  "trxId": "INV-000000023212x22",
  "additionalInfo": {
    "contractId": "ci302a21c9-bb4b-40c5-880d-e99691ed0af9"
  }
}'
