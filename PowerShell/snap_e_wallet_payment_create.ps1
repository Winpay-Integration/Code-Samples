# Description: SNAP eWallet Payment Create request sample for SNAP API.
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
  `"partnerReferenceNo`": `"000000000050`",
  `"amount`": {
    `"value`": `"10000.00`",
    `"currency`": `"IDR`"
  },
  `"urlParam`": [
    {
      `"url`": `"https://test1.bi.go.id/v1/test`",
      `"type`": `"PAY_RETURN`",
      `"isDeeplink`": `"N`"
    }
  ],
  `"validUpTo`": `"2023-09-04T18:10:11+07:00`",
  `"additionalInfo`": {
    `"channel`": `"DANA`",
    `"customerPhone`": `"0895633156874`",
    `"customerName`": `"Alisha Arunika`"
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
