# FincodeApiClient::WebhookSettingUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Webhook通知先 URL\\ \\ Webhookの通知先URLを指定します。\\ fincodeのWebhookはHTTPS通信かつ443ポートでのみ受信可能です。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |
| **signature** | **String** | 署名\\ \\ このWebhookがfincodeから送信されたことを確認するための署名です。\\ fincodeからのWebhook通知において&#x60;Fincode-Signature&#x60;ヘッダーにこの値が含まれます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookSettingUpdatingRequest.new(
  url: https://your-service.example.com/webhook-receiver,
  event: null,
  signature: WEBHOOK_FROM_FINCODE
)
```

