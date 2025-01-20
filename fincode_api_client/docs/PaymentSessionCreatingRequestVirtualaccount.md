# FincodeApiClient::PaymentSessionCreatingRequestVirtualaccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_term_day** | **String** | 支払期限日数\\ \\ &#x60;0&#x60;～&#x60;99&#x60;日の範囲でバーチャル口座で振り込み可能な期限日数を指定します。\\ 実行日から見て、支払期限日数後の翌日AMに期限切れになります。\\ 例）2024/4/1に、&#x60;支払期限日数&#x3D;2&#x60;で決済実行した場合、2024/4/4 AMに期限切れ  | [optional] |
| **virtualaccount_reception_mail_send_flag** | [**VirtualaccountReceptionMailSendFlag**](VirtualaccountReceptionMailSendFlag.md) |  |  |
| **reference_order_id** | **Object** |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingRequestVirtualaccount.new(
  payment_term_day: 90,
  virtualaccount_reception_mail_send_flag: null,
  reference_order_id: null
)
```

