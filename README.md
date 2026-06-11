# Winpay Code Samples

Sample code repository for integrating with the **Winpay Payment Gateway API**.  
This repository provides examples in multiple programming languages to help developers quickly integrate payment features into their applications.

## Supported Languages

- PHP
- NodeJS
- Go
- Java
- Python
- Ruby
- C#
- PowerShell
- cURL

---

# Repository Structure

```text
Code-Samples
│
├── PHP
├── NodeJs
├── Go
├── Java
├── Python
├── Ruby
├── CSharp
├── PowerShell
├── cURL
└── README.md
```

Each folder contains sample requests for specific APIs.

---

# Available Sample APIs

## Checkout Page

| API | File |
|------|------|
| Create Checkout Page | `checkoutpage_create.*` |
| Find Checkout by ID | `checkoutpage_find.*` |
| Find Checkout by Merchant Reference Number | `checkoutpage_find_by_merchant_reference_number.*` |
| Update Checkout Page | `checkoutpage_update.*` |
| Delete Checkout Page | `checkoutpage_delete.*` |

---

## SNAP Virtual Account

| API | File |
|------|------|
| Create Virtual Account | `snap_virtual_account_create.*` |
| Virtual Account Inquiry | `snap_virtual_account_inquiry.*` |

---

## SNAP QRIS

| API | File |
|------|------|
| Generate QRIS | `snap_qris_generate.*` |
| Query QRIS Status | `snap_qris_query.*` |

---

## SNAP E-Wallet

| API | File |
|------|------|
| Create Payment | `snap_e_wallet_payment_create.*` |
| Payment Status | `snap_e_wallet_payment_status.*` |
| Cancel Payment | `snap_e_wallet_payment_cancel.*` |

---

## SNAP Modern Retail

| API | File |
|------|------|
| Create Payment | `snap_modern_retail_payment_create.*` |
| Payment Status | `snap_modern_retail_payment_status.*` |

---

## SNAP Credit Card

| API | File |
|------|------|
| Credit Card Payment | `snap_credit_card_payment.*` |

---

# Example

Below is a sample request for creating a Virtual Account.

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
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
  }',
  CURLOPT_HTTPHEADER => array(
    'X-TIMESTAMP: timestamp',
    'X-SIGNATURE: signature',
    'X-PARTNER-ID: partnerId',
    'X-EXTERNAL-ID: externalId',
    'CHANNEL-ID: WEB',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);

echo $response;
```

---

# Environment

## Sandbox

```text
https://sandbox-snap.winpay.id
```

## Production

```text
https://snap.winpay.id
```

---

# Authentication

All SNAP APIs require the following headers:

| Header | Description |
|----------|------------|
| X-TIMESTAMP | Request timestamp |
| X-SIGNATURE | Request signature |
| X-PARTNER-ID | Partner ID provided by Winpay |
| X-EXTERNAL-ID | Unique external ID |
| CHANNEL-ID | Channel identifier |
| Content-Type | application/json |

---

# Callback / Notification

Winpay will send asynchronous payment notifications to the callback URL configured for your merchant account.

Please ensure:

- Callback URL is publicly accessible.
- Verify callback signature before processing.
- Handle duplicate notifications idempotently.
- Return HTTP 200 response after successful processing.

---

# Documentation

For complete API specifications, please refer to:

- Winpay API Documentation : https://docs.winpay.id

---

# Getting Started

1. Clone repository

```bash
git clone https://github.com/winpay-developer/Code-Samples.git
```

2. Enter the desired language folder

```bash
cd PHP
```

3. Modify:

- Partner ID
- Signature
- Timestamp
- Merchant Reference Number
- Callback URL

4. Execute the sample.

---

**Winpay Developer**

Payment Gateway Integration Made Simple.
