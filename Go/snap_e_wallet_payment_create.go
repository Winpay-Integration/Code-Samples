// Description: SNAP eWallet Payment Create request sample for SNAP API.
package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host"
  method := "POST"

  payload := strings.NewReader(`{
  "partnerReferenceNo": "000000000050",
  "amount": {
    "value": "10000.00",
    "currency": "IDR"
  },
  "urlParam": [
    {
      "url": "https://test1.bi.go.id/v1/test",
      "type": "PAY_RETURN",
      "isDeeplink": "N"
    }
  ],
  "validUpTo": "2023-09-04T18:10:11+07:00",
  "additionalInfo": {
    "channel": "DANA",
    "customerPhone": "0895633156874",
    "customerName": "Alisha Arunika"
  }
}`)

  client := &http.Client {
  }
  req, err := http.NewRequest(method, url, payload)

  if err != nil {
    fmt.Println(err)
    return
  }
  req.Header.Add("X-TIMESTAMP", "2026-11-24T17:07:05+07:00")
  req.Header.Add("X-SIGNATURE", "signature")
  req.Header.Add("X-PARTNER-ID", "snapPartnerId")
  req.Header.Add("X-EXTERNAL-ID", "isoTimestamp")
  req.Header.Add("CHANNEL-ID", "WEB")
  req.Header.Add("Content-Type", "application/json")
  req.Header.Add("Accept", "application/json")

  res, err := client.Do(req)
  if err != nil {
    fmt.Println(err)
    return
  }
  defer res.Body.Close()

  body, err := ioutil.ReadAll(res.Body)
  if err != nil {
    fmt.Println(err)
    return
  }
  fmt.Println(string(body))
}
