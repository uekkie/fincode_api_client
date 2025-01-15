# FincodeApiClient::RetrievePaymentListParameterOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ 一覧で取得する対象の決済種別を指定します。  - &#x60;Card&#x60;: カード - &#x60;Konbini&#x60;: コンビニ決済 - &#x60;Paypay&#x60;: PayPay - &#x60;Applepay&#x60;: Apple Pay - &#x60;Googlepay&#x60;: Google Pay - &#x60;Directdebit&#x60;: 口座振替  |  |
| **keyword** | **String** | 加盟店自由項目1 ~ 3（&#x60;client_field_*&#x60;）を対象とした部分一致検索を行います。  | [optional] |
| **total_amount_min** | **Integer** | 合計金額（始値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以上の合計金額を持つ決済情報を取得します。  | [optional] |
| **total_amount_max** | **Integer** | 合計金額（終値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以下の合計金額を持つ決済情報を取得します。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ 指定した顧客IDに紐づく決済情報から一覧で取得します。  | [optional] |
| **process_date_from** | **String** | 処理日時（始値）\\ 処理日時（&#x60;process_date&#x60;）を対象に範囲検索を行います。この日付以降に処理された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **process_date_to** | **String** | 処理日時（終値）\\ 処理日時（&#x60;process_date&#x60;）を対象に範囲検索を行います。この日付以前に処理された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス\\ 指定したステータスの決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;UNPROCESSED&#x60;: 未処理 - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち - &#x60;CAPTURED&#x60;: 売上確定 - &#x60;CANCELED&#x60;: キャンセル - &#x60;EXPIRED&#x60;: 決済の期限切れ  | [optional] |
| **payment_term_from** | **String** | 支払い期限（始値）\\ 支払い期限（&#x60;payment_term&#x60;）を対象に範囲検索を行います。この日付以降に支払い期限が到来する決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_term_to** | **String** | 支払い期限（終値）\\ 支払い期限（&#x60;payment_term&#x60;）を対象に範囲検索を行います。この日付以前に支払い期限が到来する決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_from** | **String** | 支払い日時（始値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以降に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_to** | **String** | 支払い日時（終値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以前に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_from** | **String** | 更新日（始値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_to** | **String** | 更新日（終値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **overpayment_flag** | **String** | 多重支払フラグ\\ 同一のバーコードで複数回支払いが行われた決済を検索する場合&#x60;1&#x60;を指定します。  | [optional] |
| **cancel_overpayment_flag** | **String** | キャンセル後支払フラグ\\ キャンセルされた決済に対して支払いが行われた決済を検索する場合&#x60;1&#x60;を指定します。  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;status&#x60;: ステータス - &#x60;process_date&#x60;: 処理日時 - &#x60;total_amount&#x60;: 合計金額 - &#x60;payment_term&#x60;: 支払い期限 - &#x60;payment_date&#x60;: 支払い日時 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrievePaymentListParameterOneOf1.new(
  pay_type: null,
  keyword: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  total_amount_min: null,
  total_amount_max: null,
  customer_id: c_**********************,
  process_date_from: null,
  process_date_to: null,
  status: null,
  payment_term_from: null,
  payment_term_to: null,
  payment_date_from: null,
  payment_date_to: null,
  updated_from: null,
  updated_to: null,
  overpayment_flag: null,
  cancel_overpayment_flag: null,
  sort: updated␣desc,created␣asc,
  page: null,
  limit: null,
  count_only: null
)
```

