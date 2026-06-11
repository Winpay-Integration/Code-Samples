<?php
// Description: SNAP eWallet Payment Create request sample for SNAP API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
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
