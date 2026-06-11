// Description: SNAP QRIS Query request sample for SNAP API.
package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query"
  method := "POST"

  payload := strings.NewReader(`{
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "serviceCode": "47",
  "additionalInfo": {
    "contractId": "qree68493d-0a7e-49ba-972f-68965403a4f9"
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
