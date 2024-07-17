# FincodeApiClient::CardPaymentSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_tds_available** | **Boolean** | （VISA／Mastercard）3Dセキュア認証が有効かどうか  - &#x60;true&#x60;: 3Dセキュア認証が有効 - &#x60;false&#x60;: 3Dセキュア認証が無効  | [optional] |
| **vm_tds_required** | **Boolean** | （VISA／Mastercard）3Dセキュア認証の利用が必須かどうか  - &#x60;true&#x60;: 3Dセキュア認証の使用が必須 - &#x60;false&#x60;: 3Dセキュア認証の使用が任意  | [optional] |
| **ja_tds_available** | **Boolean** | （JCB／AMEX）3Dセキュア認証が有効かどうか  - &#x60;true&#x60;: 3Dセキュア認証が有効 - &#x60;false&#x60;: 3Dセキュア認証が無効  | [optional] |
| **ja_tds_required** | **Boolean** | （JCB／AMEX）3Dセキュア認証の利用が必須かどうか  - &#x60;true&#x60;: 3Dセキュア認証の使用が必須 - &#x60;false&#x60;: 3Dセキュア認証の使用が任意  | [optional] |
| **install_payment_available** | **Boolean** | 分割払い／リボ払いが利用可能かどうか  - &#x60;true&#x60;: 利用可能 - &#x60;false&#x60;: 利用不可  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CardPaymentSetting.new(
  vm_tds_available: true,
  vm_tds_required: true,
  ja_tds_available: true,
  ja_tds_required: true,
  install_payment_available: true
)
```

