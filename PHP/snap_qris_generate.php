<?php
// Description: SNAP QRIS Generate request sample for SNAP API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-snap.winpay.id/snap/v1.0/qr/qr-mpm-generate',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
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
