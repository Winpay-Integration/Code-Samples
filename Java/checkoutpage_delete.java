// Description: Checkoutpage Delete request sample for Checkout Page API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "");
Request request = new Request.Builder()
  .url("https://sandbox-checkout.winpay.id/api/delete/4282f340-51a8-40a2-a0e6-f3c95543ab6f")
  .method("DELETE", body)
  .addHeader("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
  .addHeader("X-Winpay-Key", "xxxxxxxx")
  .addHeader("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
  .addHeader("Content-Type", "application/json")
  .addHeader("Accept", "application/json")
  .build();
Response response = client.newCall(request).execute();
