// Description: SNAP Virtual Account Create request sample for SNAP API.
var options = new RestClientOptions("https://sandbox-snap.winpay.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/snap/v1.0/transfer-va/create-va", Method.Post);
request.AddHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-SIGNATURE", "signature");
request.AddHeader("X-PARTNER-ID", "snapPartnerId");
request.AddHeader("X-EXTERNAL-ID", "isoTimestamp");
request.AddHeader("CHANNEL-ID", "WEB");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""customerNo"": ""000003212""," + "\n" +
@"  ""virtualAccountName"": ""Alisha Arunika""," + "\n" +
@"  ""trxId"": ""INV-000000023212x22""," + "\n" +
@"  ""totalAmount"": {" + "\n" +
@"    ""value"": ""25000.00""," + "\n" +
@"    ""currency"": ""IDR""" + "\n" +
@"  }," + "\n" +
@"  ""virtualAccountTrxType"": ""c""," + "\n" +
@"  ""expiredDate"": ""2023-09-01T19:30:14+07:00""," + "\n" +
@"  ""additionalInfo"": {" + "\n" +
@"    ""channel"": ""BRI""" + "\n" +
@"  }" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
