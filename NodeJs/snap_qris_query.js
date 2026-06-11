// Description: SNAP QRIS Query request sample for SNAP API.
const axios = require('axios');
let data = JSON.stringify({
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "serviceCode": "47",
  "additionalInfo": {
    "contractId": "qree68493d-0a7e-49ba-972f-68965403a4f9"
  }
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query',
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
