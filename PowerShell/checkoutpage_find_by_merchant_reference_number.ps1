# Description: Checkoutpage Find by Merchant Reference Number request sample for Checkout Page API.
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
$headers.Add("X-Winpay-Key", "xxxxxxxx")
$headers.Add("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
$headers.Add("Content-Type", "application/json")
$headers.Add("Accept", "application/json")

$response = Invoke-RestMethod 'https://checkout.bmstaging.id/api/findByRef/1257582293' -Method 'GET' -Headers $headers
$response | ConvertTo-Json
