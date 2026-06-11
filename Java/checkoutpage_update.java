// Description: Checkoutpage Update request sample for Checkout Page API.
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"customer\": {\n    \"name\": \"Alisha Arunika\",\n    \"email\": \"someone@email.com\",\n    \"phone\": \"082342861666\"\n  },\n  \"invoice\": {\n    \"ref\": \"invoice-0000001\",\n    \"products\": [\n      {\n        \"name\": \"Keripik Singkong\",\n        \"qty\": 6,\n        \"price\": \"20000.00\"\n      },\n      {\n        \"name\": \"Jasa Kirim\",\n        \"qty\": 1,\n        \"price\": \"5000.00\"\n      }\n    ]\n  },\n  \"back_url\": \"https://google.com\",\n  \"interval\": 3600\n}");
Request request = new Request.Builder()
  .url("https://sandbox-checkout.winpay.id/api/update/4282f340-51a8-40a2-a0e6-f3c95543ab6f")
  .method("PUT", body)
  .addHeader("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00")
  .addHeader("X-Winpay-Key", "xxxxxxxx")
  .addHeader("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx")
  .addHeader("Content-Type", "application/json")
  .addHeader("Accept", "application/json")
  .build();
Response response = client.newCall(request).execute();
