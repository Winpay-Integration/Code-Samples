// Description: SNAP Modern Retail Payment Create request sample for SNAP API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"customerNo\": \"000003212\",\n  \"virtualAccountName\": \"Alisha Arunika\",\n  \"trxId\": \"INV-000000023212x22\",\n  \"totalAmount\": {\n    \"value\": \"25000.00\",\n    \"currency\": \"IDR\"\n  },\n  \"virtualAccountTrxType\": \"c\",\n  \"expiredDate\": \"2023-09-01T19:30:14+07:00\",\n  \"additionalInfo\": {\n    \"channel\": \"BRI\"\n  }\n}");
Request request = new Request.Builder()
  .url("https://sandbox-snap.winpay.id/snap/v1.0/transfer-va/create-va")
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
