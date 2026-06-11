# Description: SNAP QRIS Query request sample for SNAP API.
curl -L -X POST 'https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query' \
-H 'X-TIMESTAMP: 2026-11-24T17:07:05+07:00' \
-H 'X-SIGNATURE: signature' \
-H 'X-PARTNER-ID: snapPartnerId' \
-H 'X-EXTERNAL-ID: isoTimestamp' \
-H 'CHANNEL-ID: WEB' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
--data-raw '{
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "serviceCode": "47",
  "additionalInfo": {
    "contractId": "qree68493d-0a7e-49ba-972f-68965403a4f9"
  }
}'
