# FincodeApiClient::GetInvoicesListParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **status** | **String** | インボイス請求書のステータス       カンマ(,)区切りで複数指定も可能です。       - &#x60;DRAFT&#x60;: 下書き - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 支払い待ち - &#x60;PAID&#x60;: 支払い完了 - &#x60;CANCELED&#x60;: キャンセル済  | [optional] |
| **keyword** | **String** | キーワード      指定した場合、請求書作成時に指定した client_field_1, client_field_2, client_field_3 のいずれかにおいて指定したワードが部分一致する請求データのみを取得します。  | [optional] |
| **due_date_from** | **String** | 支払期日範囲（開始）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、支払期日が指定日以降である請求データのみを取得します。  | [optional] |
| **due_date_to** | **String** | 支払期日範囲（終了）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、支払期日が指定日以前の請求データのみを取得します。  | [optional] |
| **issue_date_from** | **String** | 発行日範囲（開始）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、発行日が指定日以降である請求データのみを取得します。  | [optional] |
| **issue_date_to** | **String** | 発行日の範囲指定（終了）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、発行日が指定日以前の請求データのみを取得します。  | [optional] |
| **total_amount_max** | **Float** | 合計金額範囲（上限）      指定した場合、合計金額が指定金額以下の請求データのみを取得します。  | [optional] |
| **total_amount_min** | **Float** | 合計金額範囲（下限）      指定した場合、合計金額が指定金額以上の請求データのみを取得します。  | [optional] |
| **created_from** | **String** | 作成日範囲（開始）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、作成日が指定日以降である請求データのみを取得します。  | [optional] |
| **created_to** | **String** | 作成日範囲（終了）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、作成日が指定日以前の請求データのみを取得します。  | [optional] |
| **customer_id** | **String** | 顧客ID      指定した場合、顧客IDが完全一致する請求データのみを取得します。  | [optional] |
| **customer_name** | **String** | 顧客名（請求先宛名）      指定した場合、顧客名が部分一致する請求データのみを取得します。  | [optional] |
| **invoice_number** | **String** | 請求番号      指定した場合、請求番号が一致する請求データのみを取得します。  | [optional] |
| **lines_date_from** | **String** | 取引日付範囲（開始）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、「取引の日付」として入力した取引日が指定日以降の請求データのみを取得します。  | [optional] |
| **lines_date_to** | **String** | 取引日範囲（終了）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、「取引の日付」として入力した取引日が指定日以前の請求データのみを取得します。  | [optional] |
| **transaction_date_from** | **String** | 支払完了日範囲（開始）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、支払い完了日が指定日以降の請求データのみを取得します。  | [optional] |
| **transaction_date_to** | **String** | 支払完了日範囲（終了）   形式： &#x60;yyyy/MM/dd&#x60;      指定した場合、支払い完了日が指定日以前の請求データのみを取得します。  | [optional] |
| **is_uncollectible** | **Boolean** | 回収困難マーク      - &#x60;true&#x60;: 回収困難マーク済の請求データのみを取得 - &#x60;false&#x60;: 回収困難マークの無い請求データのみを取得 - &#x60;null&#x60;: いずれも取得  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::GetInvoicesListParameter.new(
  page: null,
  limit: null,
  count_only: null,
  status: null,
  keyword: null,
  due_date_from: null,
  due_date_to: null,
  issue_date_from: null,
  issue_date_to: null,
  total_amount_max: null,
  total_amount_min: null,
  created_from: null,
  created_to: null,
  customer_id: null,
  customer_name: null,
  invoice_number: null,
  lines_date_from: null,
  lines_date_to: null,
  transaction_date_from: null,
  transaction_date_to: null,
  is_uncollectible: null
)
```

