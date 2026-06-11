# Description: SNAP QRIS Query request sample for SNAP API.
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
  `"serviceCode`": `"47`",
  `"additionalInfo`": {
    `"contractId`": `"qree68493d-0a7e-49ba-972f-68965403a4f9`"
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
