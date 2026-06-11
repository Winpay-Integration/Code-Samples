# Description: Checkoutpage Create request sample for Checkout Page API.
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
$headers.Add("X-Winpay-Key", "xxxxxxxx")
$headers.Add("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
$headers.Add("Content-Type", "application/json")
$headers.Add("Accept", "application/json")

$body = @"
{
  `"customer`": {
    `"name`": `"Alisha Arunika`",
    `"email`": `"someone@email.com`",
    `"phone`": `"082342861666`"
  },
  `"invoice`": {
    `"ref`": `"invoice-0000001`",
    `"products`": [
      {
        `"name`": `"Keripik Singkong`",
        `"qty`": 6,
        `"price`": `"20000.00`"
      },
      {
        `"name`": `"Jasa Kirim`",
        `"qty`": 1,
        `"price`": `"5000.00`"
      }
    ]
  },
  `"back_url`": `"https://google.com`",
  `"interval`": 3600
}
"@

$response = Invoke-RestMethod 'https://sandbox-checkout.winpay.id/api/create' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
