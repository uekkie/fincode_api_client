# FincodeApiClient::WebhookSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook設定ID  | [optional] |
| **url** | **String** | Webhook通知先 URL\\ \\ Webhookの通知先URLを指定します。\\ fincodeのWebhookはHTTPS通信かつ443ポートでのみ受信可能です。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |
| **signature** | **String** | 署名\\ \\ このWebhookがfincodeから送信されたことを確認するための署名です。\\ fincodeからのWebhook通知において&#x60;Fincode-Signature&#x60;ヘッダーにこの値が含まれます。  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookSetting.new(
  id: w_*********************,
  url: https://your-service.example.com/webhook-receiver,
  event: null,
  signature: WEBHOOK_FROM_FINCODE,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

