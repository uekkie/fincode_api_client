# FincodeApiClient::PaymentSessionCreatingRequestPaypay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_code** | [**PayPayPaymentJobCode**](PayPayPaymentJobCode.md) | この決済URL上でPayPayによる決済を行った際、仮売上にするか即座に売上確定するか指定します。  - &#x60;AUTH&#x60;：仮売上にする - &#x60;CAPTURE&#x60;：即時売上  |  |
| **order_description** | **String** | 注文内容の説明\\ PayPayアプリ上で注文内容として表示されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingRequestPaypay.new(
  job_code: null,
  order_description: Your Shop上での購入
)
```

