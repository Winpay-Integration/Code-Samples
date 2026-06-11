// Description: SNAP QRIS Generate request sample for SNAP API.
var options = new RestClientOptions("https://sandbox-api.bmstaging.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/snap/v1.0/qr/qr-mpm-generate", Method.Post);
request.AddHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-SIGNATURE", "signature");
request.AddHeader("X-PARTNER-ID", "snapPartnerId");
request.AddHeader("X-EXTERNAL-ID", "isoTimestamp");
request.AddHeader("CHANNEL-ID", "WEB");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""partnerReferenceNo"": ""ref-0000000-0417""," + "\n" +
@"  ""terminalId"": ""TERM KEDUA""," + "\n" +
@"  ""amount"": {" + "\n" +
@"    ""value"": ""50000.00""," + "\n" +
@"    ""currency"": ""IDR""" + "\n" +
@"  }," + "\n" +
@"  ""validityPeriod"": ""2023-08-28T23:08:56+07:00""," + "\n" +
@"  ""additionalInfo"": {" + "\n" +
@"    ""isStatic"": false" + "\n" +
@"  }" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
