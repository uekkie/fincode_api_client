# FincodeApiClient::InvoiceDetailOpeningRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_mail_send_flag** | **String** | 請求書メール送信フラグ   登録や更新で設定している場合も、こちらの設定が優先されます。    - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |
| **receipt_mail_send_flag** | **String** | 領収書メール送信フラグ   登録や更新で設定している場合も、こちらの設定が優先されます。    - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |
| **underpayment_mail_send_flag** | **String** | 差額請求メール送信フラグ   登録や更新で設定している場合も、こちらの設定が優先されます。    - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceDetailOpeningRequest.new(
  bill_mail_send_flag: null,
  receipt_mail_send_flag: null,
  underpayment_mail_send_flag: null
)
```

