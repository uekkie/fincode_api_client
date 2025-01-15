# FincodeApiClient::InvoiceDetailUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_uncollectible** | **Boolean** | 回収困難フラグ | [optional] |
| **bill_mail_send_flag** | **String** | 請求書メール送信フラグ      - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |
| **receipt_mail_send_flag** | **String** | 領収書メール送信フラグ      - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |
| **underpayment_mail_send_flag** | **String** | 差額請求メール送信フラグ      - &#x60;0&#x60;: メールを送信しない（デフォルト）   - &#x60;1&#x60;: メールを送信する  | [optional] |
| **invoice_number** | **String** | 請求番号   指定しないまま請求書を開始した場合、自動採番されます。  | [optional] |
| **customer_id** | **String** | 顧客（請求先）ID | [optional] |
| **customer_honorific** | **String** | 顧客（請求先）敬称 | [optional] |
| **customer_overwrite** | [**InvoiceCreatingRequestCustomerOverwrite**](InvoiceCreatingRequestCustomerOverwrite.md) |  | [optional] |
| **issuer_overwrite** | [**InvoiceCreatingRequestIssuerOverwrite**](InvoiceCreatingRequestIssuerOverwrite.md) |  | [optional] |
| **issue_date** | **String** | 発行年月日   yyyy/MM/dd形式  | [optional] |
| **lines** | [**Array&lt;InvoiceCreatingRequestLinesInner&gt;**](InvoiceCreatingRequestLinesInner.md) | 取引内容 | [optional] |
| **pay_types** | **Array&lt;String&gt;** | ショップで利用可能な決済種別のリスト   利用可能にする決済種別全てを指定してください。      - &#x60;Virtualaccount&#x60;: バーチャル口座振込 - &#x60;Card&#x60;: カード決済  | [optional] |
| **card** | [**InvoiceCreatingRequestCard**](InvoiceCreatingRequestCard.md) |  | [optional] |
| **virtual_account** | [**InvoiceCreatingRequestVirtualAccount**](InvoiceCreatingRequestVirtualAccount.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目1 | [optional] |
| **client_field_2** | **String** | 加盟店自由項目2 | [optional] |
| **client_field_3** | **String** | 加盟店自由項目3 | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceDetailUpdatingRequest.new(
  is_uncollectible: null,
  bill_mail_send_flag: null,
  receipt_mail_send_flag: null,
  underpayment_mail_send_flag: null,
  invoice_number: null,
  customer_id: null,
  customer_honorific: null,
  customer_overwrite: null,
  issuer_overwrite: null,
  issue_date: null,
  lines: null,
  pay_types: null,
  card: null,
  virtual_account: null,
  client_field_1: null,
  client_field_2: null,
  client_field_3: null
)
```

