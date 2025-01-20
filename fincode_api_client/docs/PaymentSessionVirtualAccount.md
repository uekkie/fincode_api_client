# FincodeApiClient::PaymentSessionVirtualAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtualaccount_reception_url** | **String** | 銀行振込 支払い画面URL  | [optional] |
| **payment_term_day** | **Integer** | 支払期限日数\\ \\ 実行日から見て、支払期限日数後の翌日AMに期限切れになります。\\ 例）2024/4/1に、&#x60;支払期限日数&#x3D;2&#x60;で決済実行した場合、2024/4/4 AMに期限切れ  | [optional] |
| **virtualaccount_reception_mail_send_flag** | **String** | 銀行振込 支払い画面案内メール送信フラグ\\ 銀行振込の支払い画面案内メールを送信するかどうかを設定します。  - &#x60;0&#x60;：送信しない - &#x60;1&#x60;：送信する  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionVirtualAccount.new(
  virtualaccount_reception_url: https://secure.test.fincode.jp/v1/links/lk_**********************/virtualaccount,
  payment_term_day: 90,
  virtualaccount_reception_mail_send_flag: 1
)
```

