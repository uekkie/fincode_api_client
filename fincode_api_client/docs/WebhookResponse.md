# FincodeApiClient::WebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receive** | **String** | Webhook通知受信\\ \\ Webhookの受信が正常に完了したかどうかをfincodeにレスポンスします。  - &#x60;0&#x60;: 受信成功&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;fincodeは受信に成功したと判断し、通知を終了します。&lt;/span&gt; - &#x60;1&#x60;: 受信失敗&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;fincodeは受信に失敗したと判断します。Webhookの受信に失敗した場合は、fincodeはリトライを行います。&lt;/span&gt;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookResponse.new(
  receive: 0
)
```

