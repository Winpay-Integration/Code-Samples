<?php
// Description: SNAP Virtual Account Create request sample for SNAP API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
  "customerNo": "000003212",
  "virtualAccountName": "Alisha Arunika",
  "trxId": "INV-000000023212x22",
  "totalAmount": {
    "value": "25000.00",
    "currency": "IDR"
  },
  "virtualAccountTrxType": "c",
  "expiredDate": "2023-09-01T19:30:14+07:00",
  "additionalInfo": {
    "channel": "BRI"
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
