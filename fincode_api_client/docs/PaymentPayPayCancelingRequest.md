# FincodeApiClient::PaymentPayPayCancelingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  |  |
| **access_id** | **String** | 取引ID  |  |
| **cancel_description** | **String** | キャンセルの説明\\ 購入者のPayPayアプリ上で表示されるキャンセルの説明。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentPayPayCancelingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  cancel_description: ○○の購入キャンセル
)
```

