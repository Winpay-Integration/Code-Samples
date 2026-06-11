<?php
// Description: SNAP Virtual Account Inquiry request sample for SNAP API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
  "trxId": "INV-000000023212x22",
  "additionalInfo": {
    "contractId": "ci302a21c9-bb4b-40c5-880d-e99691ed0af9"
  }
}',
  CURLOPT_HTTPHEADER => array(
    'X-TIMESTAMP: 2026-11-24T17:07:05+07:00',
    'X-SIGNATURE: signature',
    'X-PARTNER-ID: snapPartnerId',
    'X-EXTERNAL-ID: isoTimestamp',
    'CHANNEL-ID: WEB',
    'Content-Type: application/json',
    'Accept: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
