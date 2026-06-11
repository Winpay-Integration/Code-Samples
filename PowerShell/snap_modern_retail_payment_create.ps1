# Description: SNAP Modern Retail Payment Create request sample for SNAP API.
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
  `"customerNo`": `"000003212`",
  `"virtualAccountName`": `"Alisha Arunika`",
  `"trxId`": `"INV-000000023212x22`",
  `"totalAmount`": {
    `"value`": `"25000.00`",
    `"currency`": `"IDR`"
  },
  `"virtualAccountTrxType`": `"c`",
  `"expiredDate`": `"2023-09-01T19:30:14+07:00`",
  `"additionalInfo`": {
    `"channel`": `"BRI`"
  }
}
"@

$response = Invoke-RestMethod 'https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
