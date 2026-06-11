// Description: SNAP Modern Retail Payment Status request sample for SNAP API.
var options = new RestClientOptions("https://sandbox-api.bmstaging.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/snap/v1.0/transfer-va/inquiry-va", Method.Post);
request.AddHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-SIGNATURE", "signature");
request.AddHeader("X-PARTNER-ID", "snapPartnerId");
request.AddHeader("X-EXTERNAL-ID", "isoTimestamp");
request.AddHeader("CHANNEL-ID", "WEB");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""trxId"": ""INV-000000023212x22""," + "\n" +
@"  ""additionalInfo"": {" + "\n" +
@"    ""contractId"": ""ci302a21c9-bb4b-40c5-880d-e99691ed0af9""" + "\n" +
@"  }" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
