# FincodeApiClient::PaymentGooglePayChangingAmountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Googlepay&#x60;: Google Pay  |  |
| **access_id** | **String** | 取引ID  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [Google Pay &gt; 制限事項 &gt; 利用可能な金額](/payment/googlepay/restriction)  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [Google Pay &gt; 制限事項 &gt; 利用可能な金額](/payment/googlepay/restriction)  | [optional] |
| **job_code** | [**CardPaymentJobCode**](CardPaymentJobCode.md) | 取引種別\\ 仮売上にするか即座に売上確定するかを指定します。  - &#x60;AUTH&#x60;：仮売上 - &#x60;CAPTURE&#x60;：即時売上  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentGooglePayChangingAmountRequest.new(
  pay_type: null,
  access_id: a_**********************,
  amount: 1000,
  tax: 100,
  job_code: null
)
```

