// Description: Checkoutpage Find by Merchant Reference Number request sample for Checkout Page API.
var options = new RestClientOptions("https://checkout.bmstaging.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/api/findByRef/1257582293", Method.Get);
request.AddHeader("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-Winpay-Key", "xxxxxxxx");
request.AddHeader("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
