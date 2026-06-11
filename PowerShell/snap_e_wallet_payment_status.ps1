# Description: SNAP eWallet Payment Status request sample for SNAP API.
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
  `"originalPartnerReferenceNo`": `"ref-0000000-0417`",
  `"additionalInfo`": {
    `"contractId`": `"so73279ac4-4c4f-443b-9990-80e5da6cc374`",
    `"channel`": `"SPAY`"
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-api.bmstaging.id/snap/v1.0/debit/status' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
