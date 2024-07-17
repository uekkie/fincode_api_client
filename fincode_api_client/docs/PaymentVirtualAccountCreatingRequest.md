# FincodeApiClient::PaymentVirtualAccountCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Virtualaccount&#x60;: 銀行振込  |  |
| **billing_amount** | **String** | 振込依頼金額\\ &#x60;billing_tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照例： [銀行振込（バーチャル口座） &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/virtualaccount/restriction)  |  |
| **billing_tax** | **String** | 振込依頼金額（税送料）\\ &#x60;billing_amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照例： [銀行振込（バーチャル口座） &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/virtualaccount/restriction)  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1\\ 任意の値を挿入し、決済情報に保存できます。  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentVirtualAccountCreatingRequest.new(
  id: o_**********************,
  pay_type: null,
  billing_amount: null,
  billing_tax: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

