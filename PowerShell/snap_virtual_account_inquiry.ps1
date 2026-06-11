# Description: SNAP Virtual Account Inquiry request sample for SNAP API.
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
  `"trxId`": `"INV-000000023212x22`",
  `"additionalInfo`": {
    `"contractId`": `"ci302a21c9-bb4b-40c5-880d-e99691ed0af9`"
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
