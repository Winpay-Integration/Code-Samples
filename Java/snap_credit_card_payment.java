// Description: SNAP Credit Card Payment request sample for SNAP API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"partnerReferenceNo\": \"000000000050\",\n  \"amount\": {\n    \"value\": \"10000.00\",\n    \"currency\": \"IDR\"\n  },\n  \"urlParam\": [\n    {\n      \"url\": \"https://test1.bi.go.id/v1/test\",\n      \"type\": \"PAY_RETURN\",\n      \"isDeeplink\": \"N\"\n    }\n  ],\n  \"validUpTo\": \"2023-09-04T18:10:11+07:00\",\n  \"additionalInfo\": {\n    \"channel\": \"CC\",\n    \"customerPhone\": \"0895633156874\",\n    \"customerName\": \"Alisha Arunika\"\n  }\n}");
Request request = new Request.Builder()
  .url("https://sandbox-snap.winpay.id/snap/v1.0/debit/payment-host-to-host")
  .method("POST", body)
  .addHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00")
  .addHeader("X-SIGNATURE", "signature")
  .addHeader("X-PARTNER-ID", "snapPartnerId")
  .addHeader("X-EXTERNAL-ID", "isoTimestamp")
  .addHeader("CHANNEL-ID", "WEB")
  .addHeader("Content-Type", "application/json")
  .addHeader("Accept", "application/json")
  .build();
Response response = client.newCall(request).execute();
