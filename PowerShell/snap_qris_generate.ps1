# Description: SNAP QRIS Generate request sample for SNAP API.
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("X-TIMESTAMP", "2026-11-24T17:07:05+07:00")
$headers.Add("X-SIGNATURE", "signature")
$headers.Add("X-PARTNER-ID", "snapPartnerId")
$headers.Add("X-EXTERNAL-ID", "isoTimestamp")
$headers.Add("CHANNEL-ID", "WEB")
$headers.Add("Content-Type", "application/json")
$headers.Add("Accept", "application/json")

$body = @"
{
  `"partnerReferenceNo`": `"ref-0000000-0417`",
  `"terminalId`": `"TERM KEDUA`",
  `"amount`": {
    `"value`": `"50000.00`",
    `"currency`": `"IDR`"
  },
  `"validityPeriod`": `"2023-08-28T23:08:56+07:00`",
  `"additionalInfo`": {
    `"isStatic`": false
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-generate' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
