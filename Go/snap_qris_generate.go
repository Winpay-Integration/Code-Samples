// Description: SNAP QRIS Generate request sample for SNAP API.
package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-generate"
  method := "POST"

  payload := strings.NewReader(`{
  "partnerReferenceNo": "ref-0000000-0417",
  "terminalId": "TERM KEDUA",
  "amount": {
    "value": "50000.00",
    "currency": "IDR"
  },
  "validityPeriod": "2023-08-28T23:08:56+07:00",
  "additionalInfo": {
    "isStatic": false
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
