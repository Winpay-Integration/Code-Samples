// Description: Checkoutpage Create request sample for Checkout Page API.
package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://sandbox-checkout.winpay.id/api/create"
  method := "POST"

  payload := strings.NewReader(`{
  "customer": {
    "name": "Alisha Arunika",
    "email": "someone@email.com",
    "phone": "082342861666"
  },
  "invoice": {
    "ref": "invoice-0000001",
    "products": [
      {
        "name": "Keripik Singkong",
        "qty": 6,
        "price": "20000.00"
      },
      {
        "name": "Jasa Kirim",
        "qty": 1,
        "price": "5000.00"
      }
    ]
  },
  "back_url": "https://google.com",
  "interval": 3600
}`)

  client := &http.Client {
  }
  req, err := http.NewRequest(method, url, payload)

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
