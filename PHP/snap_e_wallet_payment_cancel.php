<?php
// Description: SNAP eWallet Payment Cancel request sample for SNAP API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-snap.winpay.id/snap/v1.0/debit/cancel',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "reason": "Alasan cancel",
  "additionalInfo": {
    "contractId": "so73279ac4-4c4f-443b-9990-80e5da6cc374",
    "channel": "SPAY"
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
