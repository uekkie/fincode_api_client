# FincodeApiClient::PaymentSessionKonbini

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **konbini_reception_url** | **String** | コンビニ決済 支払い画面URL  | [optional] |
| **payment_term_day** | **Float** | コンビニ決済 支払期限日数\\ 店頭レジでの支払い期限日数です。  | [optional] |
| **konbini_reception_mail_send_flag** | **String** | コンビニ決済 支払い画面案内メール送信フラグ\\ コンビニ決済の支払い画面案内メールを送信するかどうかを設定します。  - &#x60;0&#x60;：送信しない - &#x60;1&#x60;：送信する  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionKonbini.new(
  konbini_reception_url: https://secure.test.fincode.jp/v1/links/lk_**********************/konbini,
  payment_term_day: 7,
  konbini_reception_mail_send_flag: 1
)
```

