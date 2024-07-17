# FincodeApiClient::PaymentPayPayCapturingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  |  |
| **access_id** | **String** | 取引ID  |  |
| **capture_description** | **String** | 売上確定の説明\\ 購入者のPayPayアプリ上で表示される売上確定の説明。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentPayPayCapturingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  capture_description: ○○の発送完了
)
```

