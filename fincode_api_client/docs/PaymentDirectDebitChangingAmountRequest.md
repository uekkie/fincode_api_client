# FincodeApiClient::PaymentDirectDebitChangingAmountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Directdebit&#x60;: 口座振替  |  |
| **access_id** | **String** | 取引ID  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [口座振替 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/directdebit/restriction)  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [口座振替 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/directdebit/restriction)  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentDirectDebitChangingAmountRequest.new(
  pay_type: null,
  access_id: a_**********************,
  amount: 1000,
  tax: 100
)
```

