// Description: Checkoutpage Delete request sample for Checkout Page API.
const axios = require('axios');

let config = {
  method: 'delete',
maxBodyLength: Infinity,
  url: 'https://sandbox-checkout.winpay.id/api/delete/4282f340-51a8-40a2-a0e6-f3c95543ab6f',
  headers: { 
    'X-Winpay-Timestamp': '2026-11-24T17:07:05+07:00', 
    'X-Winpay-Key': 'xxxxxxxx', 
    'X-Winpay-Signature': 'xxxxxxxxxxxxxxxxx', 
    'Content-Type': 'application/json', 
    'Accept': 'application/json'
  }
};

axios(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
});
