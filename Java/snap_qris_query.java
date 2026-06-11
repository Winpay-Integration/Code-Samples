// Description: SNAP QRIS Query request sample for SNAP API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"originalPartnerReferenceNo\": \"ref-0000000-0417\",\n  \"serviceCode\": \"47\",\n  \"additionalInfo\": {\n    \"contractId\": \"qree68493d-0a7e-49ba-972f-68965403a4f9\"\n  }\n}");
Request request = new Request.Builder()
  .url("https://sandbox-api.bmstaging.id/snap/v1.0/qr/qr-mpm-query")
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
