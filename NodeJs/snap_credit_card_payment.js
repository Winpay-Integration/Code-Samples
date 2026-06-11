// Description: SNAP Credit Card Payment request sample for SNAP API.
const axios = require('axios');
let data = JSON.stringify({
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
    "channel": "CC",
    "customerPhone": "0895633156874",
    "customerName": "Alisha Arunika"
  }
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host',
  headers: { 
    'X-TIMESTAMP': '2026-11-24T17:07:05+07:00', 
    'X-SIGNATURE': 'signature', 
    'X-PARTNER-ID': 'snapPartnerId', 
    'X-EXTERNAL-ID': 'isoTimestamp', 
    'CHANNEL-ID': 'WEB', 
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
