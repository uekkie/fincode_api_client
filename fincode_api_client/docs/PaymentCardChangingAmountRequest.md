# FincodeApiClient::PaymentCardChangingAmountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Card&#x60;: カード  |  |
| **access_id** | **String** | 取引ID  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [カード決済 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/restriction)  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [カード決済 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/restriction)  | [optional] |
| **job_code** | [**CardPaymentJobCode**](CardPaymentJobCode.md) | 取引種別\\ この決済に対し決済実行を行った際、仮売上にするか即座に売上確定するか、カードの有効性チェックのみを行うかを指定します。  - &#x60;CHECK&#x60;：有効性チェックのみ行う - &#x60;AUTH&#x60;：仮売上にする - &#x60;CAPTURE&#x60;：即時売上  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardChangingAmountRequest.new(
  pay_type: null,
  access_id: a_**********************,
  amount: 1000,
  tax: 100,
  job_code: null
)
```

