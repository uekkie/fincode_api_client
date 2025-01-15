# FincodeApiClient::Invoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  | [optional] |
| **status** | **String** | インボイス請求書のステータス      - &#x60;DRAFT&#x60;: 下書き - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 支払い待ち - &#x60;PAID&#x60;: 支払い完了 - &#x60;CANCELED&#x60;: キャンセル済  | [optional] |
| **invoice_url** | **String** | インボイス 請求ページURL  | [optional] |
| **bill_mail_send_flag** | **String** | 請求書メール送信フラグ (0: メールを送信しない 1: メールを送信する)  | [optional] |
| **bill_pdf_url** | **String** | [非推奨] インボイス請求書PDFダウンロードURL\\ ※ 2024年10月現在、請求書を表示するWebページのURLがレスポンスされます。このページへはインボイス 請求ページからアクセスできます。  | [optional] |
| **receipt_mail_send_flag** | **String** | 領収書メール送信フラグ (0: メールを送信しない 1: メールを送信する)  | [optional] |
| **underpayment_mail_send_flag** | **String** | 差額請求メール送信フラグ (0: メールを送信しない 1: メールを送信する)  | [optional] |
| **receipt_pdf_url** | **String** | [非推奨] インボイス領収書PDFダウンロードURL\\ ※ 2024年10月現在、領収書を表示するWebページのURLがレスポンスされます。このページへは支払い完了後にインボイス 請求ページからアクセスできます。  | [optional] |
| **invoice_number** | **String** | 請求番号  | [optional] |
| **customer_id** | **String** | 顧客（請求先）ID  | [optional] |
| **customer_honorific** | **String** | 顧客（請求先）敬称  | [optional] |
| **customer** | [**InvoiceCustomer**](InvoiceCustomer.md) |  | [optional] |
| **customer_overwrite** | [**InvoiceCustomerOverwrite**](InvoiceCustomerOverwrite.md) |  | [optional] |
| **issuer** | [**InvoiceIssuer**](InvoiceIssuer.md) |  | [optional] |
| **issuer_overwrite** | [**InvoiceIssuerOverwrite**](InvoiceIssuerOverwrite.md) |  | [optional] |
| **issue_date** | **String** | 発行年月日   形式： &#x60;yyyy/MM/dd&#x60;    | [optional] |
| **lines** | [**Array&lt;InvoiceLinesInner&gt;**](InvoiceLinesInner.md) | 取引内容レコード    | [optional] |
| **total_amount** | **Float** | 合計金額    | [optional] |
| **billing_total_amount** | **Float** | 請求金額合計    | [optional] |
| **pay_types** | **Array&lt;String&gt;** | 利用可能な決済種別リスト      - &#x60;\&quot;Virtualaccount\&quot;&#x60;: バーチャル口座振込 - &#x60;\&quot;Card\&quot;&#x60;: カード決済  | [optional] |
| **card** | [**InvoiceCard**](InvoiceCard.md) |  | [optional] |
| **virtual_account** | [**InvoiceVirtualAccount**](InvoiceVirtualAccount.md) |  | [optional] |
| **embedded_virtual_account** | [**InvoiceEmbeddedVirtualAccount**](InvoiceEmbeddedVirtualAccount.md) |  | [optional] |
| **is_tax_included** | **Boolean** | 内税表記有無      - &#x60;true&#x60;: 内税表記   - &#x60;false&#x60;: 外税表記    | [optional] |
| **due_date** | **String** | 支払期日   yyyy/MM/dd形式  | [optional] |
| **memo** | **String** | 備考 | [optional] |
| **client_field_1** | **String** | 加盟店自由項目1 | [optional] |
| **client_field_2** | **String** | 加盟店自由項目2 | [optional] |
| **client_field_3** | **String** | 加盟店自由項目3 | [optional] |
| **is_uncollectible** | **Boolean** | 回収困難フラグ    | [optional] |
| **is_paid_externally** | **Boolean** | fincode外支払フラグ    | [optional] |
| **transaction_date** | **String** | 支払完了日 | [optional] |
| **created** | **String** | 作成日時 | [optional] |
| **updated** | **String** | 更新日時 | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::Invoice.new(
  id: null,
  status: null,
  invoice_url: null,
  bill_mail_send_flag: null,
  bill_pdf_url: null,
  receipt_mail_send_flag: null,
  underpayment_mail_send_flag: null,
  receipt_pdf_url: null,
  invoice_number: null,
  customer_id: null,
  customer_honorific: null,
  customer: null,
  customer_overwrite: null,
  issuer: null,
  issuer_overwrite: null,
  issue_date: null,
  lines: null,
  total_amount: null,
  billing_total_amount: null,
  pay_types: null,
  card: null,
  virtual_account: null,
  embedded_virtual_account: null,
  is_tax_included: null,
  due_date: null,
  memo: null,
  client_field_1: null,
  client_field_2: null,
  client_field_3: null,
  is_uncollectible: null,
  is_paid_externally: null,
  transaction_date: null,
  created: null,
  updated: null
)
```

