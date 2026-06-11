# Description: Checkoutpage Find request sample for Checkout Page API.
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
$headers.Add("X-Winpay-Key", "xxxxxxxx")
$headers.Add("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
$headers.Add("Content-Type", "application/json")
$headers.Add("Accept", "application/json")

$response = Invoke-RestMethod 'https://checkout.bmstaging.id/api/find/4282f340-51a8-40a2-a0e6-f3c95543ab6f' -Method 'GET' -Headers $headers
$response | ConvertTo-Json
