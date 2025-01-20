# FincodeApiClient::PaymentSessionCreatingRequestKonbini

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_term_day** | **String** | コンビニ決済 支払期限日数\\ 店頭レジでの支払い期限日数です。  | [optional] |
| **konbini_reception_mail_send_flag** | [**KonbiniReceptionMailSendFlag**](KonbiniReceptionMailSendFlag.md) |  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingRequestKonbini.new(
  payment_term_day: 2,
  konbini_reception_mail_send_flag: null
)
```

