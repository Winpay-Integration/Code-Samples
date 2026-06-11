# Description: SNAP eWallet Payment Status request sample for SNAP API.
curl -L -X POST 'https://sandbox-snap.winpay.id/snap/v1.0/debit/status' \
-H 'X-TIMESTAMP: 2026-11-24T17:07:05+07:00' \
-H 'X-SIGNATURE: signature' \
-H 'X-PARTNER-ID: snapPartnerId' \
-H 'X-EXTERNAL-ID: isoTimestamp' \
-H 'CHANNEL-ID: WEB' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "additionalInfo": {
    "contractId": "so73279ac4-4c4f-443b-9990-80e5da6cc374",
    "channel": "SPAY"
  }
}'
