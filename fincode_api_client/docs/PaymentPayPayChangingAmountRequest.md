# FincodeApiClient::PaymentPayPayChangingAmountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  |  |
| **access_id** | **String** | 取引ID  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [PayPay &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/paypay/restriction)  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [PayPay &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/paypay/restriction)  | [optional] |
| **update_description** | **String** | 金額変更の説明\\ 購入者のPayPayアプリ上で表示される金額変更の説明。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentPayPayChangingAmountRequest.new(
  pay_type: null,
  access_id: a_**********************,
  amount: 1000,
  tax: 100,
  update_description: ○○の変更の適用
)
```

