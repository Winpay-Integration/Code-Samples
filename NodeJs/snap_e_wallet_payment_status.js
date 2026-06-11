// Description: SNAP eWallet Payment Status request sample for SNAP API.
const axios = require('axios');
let data = JSON.stringify({
  "originalPartnerReferenceNo": "ref-0000000-0417",
  "additionalInfo": {
    "contractId": "so73279ac4-4c4f-443b-9990-80e5da6cc374",
    "channel": "SPAY"
  }
});

let config = {
  method: 'post',
maxBodyLength: Infinity,
  url: 'https://sandbox-snap.winpay.id/snap/v1.0/debit/status',
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
