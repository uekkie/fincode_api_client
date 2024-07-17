# FincodeApiClient::WebhookSettingDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 削除されたWebhook設定のID | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookSettingDeletingResponse.new(
  id: w_*********************,
  delete_flag: null
)
```

