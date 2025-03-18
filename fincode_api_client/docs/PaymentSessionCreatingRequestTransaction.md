# FincodeApiClient::PaymentSessionCreatingRequestTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**Array&lt;PaymentSessionPayType&gt;**](PaymentSessionPayType.md) | 決済手段\\ この決済URL上で使用できる決済手段を指定します。複数指定可能です。  - &#x60;Card&#x60;：カード決済 - &#x60;Konbini&#x60;：コンビニ決済 - &#x60;Paypay&#x60;：PayPay - &#x60;Virtualaccount&#x60;：バーチャル口座決済  | [optional] |
| **amount** | **String** | 決済金額\\ 決済金額を指定します。\\ \\ 指定可能な金額の範囲は各決済手段ごとの制限事項に準じます。  |  |
| **order_id** | **String** | オーダーID\\ このリダイレクト型決済URL上で決済後生成される決済情報のIDを予め指定できます。  | [optional] |
| **tax** | **String** | 税送料\\ 税送料を指定します。\\ \\ 指定可能な金額の範囲は各決済手段ごとの制限事項に準じます。  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingRequestTransaction.new(
  pay_type: null,
  amount: 1000,
  order_id: o_**********************,
  tax: 100,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

