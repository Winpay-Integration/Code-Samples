// Description: Checkoutpage Update request sample for Checkout Page API.
var options = new RestClientOptions("https://sandbox-checkout.winpay.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/api/update/4282f340-51a8-40a2-a0e6-f3c95543ab6f", Method.Put);
request.AddHeader("X-Winpay-Timestamp", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-Winpay-Key", "xxxxxxxx");
request.AddHeader("X-Winpay-Signature", "xxxxxxxxxxxxxxxxx");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""customer"": {" + "\n" +
@"    ""name"": ""Alisha Arunika""," + "\n" +
@"    ""email"": ""someone@email.com""," + "\n" +
@"    ""phone"": ""082342861666""" + "\n" +
@"  }," + "\n" +
@"  ""invoice"": {" + "\n" +
@"    ""ref"": ""invoice-0000001""," + "\n" +
@"    ""products"": [" + "\n" +
@"      {" + "\n" +
@"        ""name"": ""Keripik Singkong""," + "\n" +
@"        ""qty"": 6," + "\n" +
@"        ""price"": ""20000.00""" + "\n" +
@"      }," + "\n" +
@"      {" + "\n" +
@"        ""name"": ""Jasa Kirim""," + "\n" +
@"        ""qty"": 1," + "\n" +
@"        ""price"": ""5000.00""" + "\n" +
@"      }" + "\n" +
@"    ]" + "\n" +
@"  }," + "\n" +
@"  ""back_url"": ""https://google.com""," + "\n" +
@"  ""interval"": 3600" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
