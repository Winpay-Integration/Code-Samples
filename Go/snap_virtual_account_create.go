// Description: SNAP Virtual Account Create request sample for SNAP API.
package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va"
  method := "POST"

  payload := strings.NewReader(`{
  "customerNo": "000003212",
  "virtualAccountName": "Alisha Arunika",
  "trxId": "INV-000000023212x22",
  "totalAmount": {
    "value": "25000.00",
    "currency": "IDR"
  },
  "virtualAccountTrxType": "c",
  "expiredDate": "2023-09-01T19:30:14+07:00",
  "additionalInfo": {
    "channel": "BRI"
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
