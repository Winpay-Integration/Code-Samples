// Description: SNAP Modern Retail Payment Status request sample for SNAP API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"trxId\": \"INV-000000023212x22\",\n  \"additionalInfo\": {\n    \"contractId\": \"ci302a21c9-bb4b-40c5-880d-e99691ed0af9\"\n  }\n}");
Request request = new Request.Builder()
  .url("https://sandbox-api.bmstaging.id/snap/v1.0/transfer-va/inquiry-va")
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
