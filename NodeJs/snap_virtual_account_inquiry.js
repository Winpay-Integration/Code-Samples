// Description: SNAP Virtual Account Inquiry request sample for SNAP API.
const axios = require('axios');
let data = JSON.stringify({
  "trxId": "INV-000000023212x22",
  "additionalInfo": {
    "contractId": "ci302a21c9-bb4b-40c5-880d-e99691ed0af9"
  }
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va',
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
