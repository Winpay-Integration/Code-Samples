// Description: SNAP QRIS Query request sample for SNAP API.
var options = new RestClientOptions("https://sandbox-api.bmstaging.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/snap/v1.0/qr/qr-mpm-query", Method.Post);
request.AddHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-SIGNATURE", "signature");
request.AddHeader("X-PARTNER-ID", "snapPartnerId");
request.AddHeader("X-EXTERNAL-ID", "isoTimestamp");
request.AddHeader("CHANNEL-ID", "WEB");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""originalPartnerReferenceNo"": ""ref-0000000-0417""," + "\n" +
@"  ""serviceCode"": ""47""," + "\n" +
@"  ""additionalInfo"": {" + "\n" +
@"    ""contractId"": ""qree68493d-0a7e-49ba-972f-68965403a4f9""" + "\n" +
@"  }" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
