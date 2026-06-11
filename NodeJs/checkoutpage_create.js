// Description: Checkoutpage Create request sample for Checkout Page API.
const axios = require('axios');
let data = JSON.stringify({
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
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-checkout.winpay.id/api/create',
  headers: { 
    'X-Winpay-Timestamp': '2026-11-24T17:07:05+07:00', 
    'X-Winpay-Key': 'xxxxxxxx', 
    'X-Winpay-Signature': 'xxxxxxxxxxxxxxxxx', 
    'Content-Type': 'application/json', 
    'Accept': 'application/json'
  },
  data : data
};

axios(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
});
