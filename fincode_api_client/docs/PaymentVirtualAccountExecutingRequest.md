# FincodeApiClient::PaymentVirtualAccountExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Virtualaccount&#x60;: 銀行振込  |  |
| **access_id** | **String** | 取引ID  |  |
| **payment_term_day** | **Integer** | 支払期限日数\\ \\ &#x60;1&#x60;～&#x60;90&#x60;日の範囲でバーチャル口座で振り込み可能な期限日数を指定します。\\ 決済実行の翌日を起算日とし、期限日の23:59:59.999までが支払期限となります。  | [optional] |
| **reference_order_id** | **Object** |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentVirtualAccountExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  payment_term_day: 3,
  reference_order_id: null
)
```

