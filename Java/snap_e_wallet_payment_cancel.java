// Description: SNAP eWallet Payment Cancel request sample for SNAP API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"originalPartnerReferenceNo\": \"ref-0000000-0417\",\n  \"reason\": \"Alasan cancel\",\n  \"additionalInfo\": {\n    \"contractId\": \"so73279ac4-4c4f-443b-9990-80e5da6cc374\",\n    \"channel\": \"SPAY\"\n  }\n}");
Request request = new Request.Builder()
  .url("https://sandbox-snap.winpay.id/snap/v1.0/debit/cancel")
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
