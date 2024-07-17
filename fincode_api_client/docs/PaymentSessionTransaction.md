# FincodeApiClient::PaymentSessionTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**Array&lt;PaymentSessionPayType&gt;**](PaymentSessionPayType.md) | 決済手段\\ この決済URL上で使用できる決済手段を複数指定します。  - &#x60;Card&#x60;：カード決済 - &#x60;Konbini&#x60;：コンビニ決済 - &#x60;Paypay&#x60;：PayPay  | [optional] |
| **order_id** | **String** | オーダーID\\ このリダイレクト型決済URL上で決済後生成される決済情報のID  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionTransaction.new(
  pay_type: null,
  order_id: o_**********************,
  amount: 1000,
  tax: 100,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

