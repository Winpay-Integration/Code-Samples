// Description: SNAP Credit Card Payment request sample for SNAP API.
var options = new RestClientOptions("https://sandbox-snap.winpay.id")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/snap/v1.0/debit/payment-host-to-host", Method.Post);
request.AddHeader("X-TIMESTAMP", "2026-11-24T17:07:05+07:00");
request.AddHeader("X-SIGNATURE", "signature");
request.AddHeader("X-PARTNER-ID", "snapPartnerId");
request.AddHeader("X-EXTERNAL-ID", "isoTimestamp");
request.AddHeader("CHANNEL-ID", "WEB");
request.AddHeader("Content-Type", "application/json");
request.AddHeader("Accept", "application/json");
var body = @"{" + "\n" +
@"  ""partnerReferenceNo"": ""000000000050""," + "\n" +
@"  ""amount"": {" + "\n" +
@"    ""value"": ""10000.00""," + "\n" +
@"    ""currency"": ""IDR""" + "\n" +
@"  }," + "\n" +
@"  ""urlParam"": [" + "\n" +
@"    {" + "\n" +
@"      ""url"": ""https://test1.bi.go.id/v1/test""," + "\n" +
@"      ""type"": ""PAY_RETURN""," + "\n" +
@"      ""isDeeplink"": ""N""" + "\n" +
@"    }" + "\n" +
@"  ]," + "\n" +
@"  ""validUpTo"": ""2023-09-04T18:10:11+07:00""," + "\n" +
@"  ""additionalInfo"": {" + "\n" +
@"    ""channel"": ""CC""," + "\n" +
@"    ""customerPhone"": ""0895633156874""," + "\n" +
@"    ""customerName"": ""Alisha Arunika""" + "\n" +
@"  }" + "\n" +
@"}";
request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
