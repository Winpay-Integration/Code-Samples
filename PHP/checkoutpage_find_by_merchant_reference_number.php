<?php
// Description: Checkoutpage Find by Merchant Reference Number request sample for Checkout Page API.

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://checkout.bmstaging.id/api/findByRef/1257582293',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'X-Winpay-Timestamp: 2026-11-24T17:07:05+07:00',
    'X-Winpay-Key: xxxxxxxx',
    'X-Winpay-Signature: xxxxxxxxxxxxxxxxx',
    'Content-Type: application/json',
    'Accept: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
