// Description: Checkoutpage Delete request sample for Checkout Page API.
package main

import (
  "fmt"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-checkout.winpay.id/api/delete/4282f340-51a8-40a2-a0e6-f3c95543ab6f"
  method := "DELETE"

  client := &http.Client {
  }
  req, err := http.NewRequest(method, url, nil)

  if err != nil {
    fmt.Println(err)
    return
  }
  req.Header.Add("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
  req.Header.Add("X-Winpay-Key", "xxxxxxxx")
  req.Header.Add("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
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
