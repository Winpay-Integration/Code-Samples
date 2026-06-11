// Description: SNAP Virtual Account Create request sample for SNAP API.
const axios = require('axios');
let data = JSON.stringify({
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
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va',
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
