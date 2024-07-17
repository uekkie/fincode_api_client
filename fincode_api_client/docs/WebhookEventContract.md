# FincodeApiClient::WebhookEventContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |
| **body** | [**Array&lt;WebhookEventContractBodyInner&gt;**](WebhookEventContractBodyInner.md) | 決済手段 契約状況リスト\\ \\ 決済手段の種別とその契約ステータスを含むオブジェクトの配列です。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventContract.new(
  shop_id: s_***********,
  event: null,
  body: null
)
```

