# FincodeApiClient::PaymentListRetrievingKonbiniQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス\\ 指定したステータスの決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;UNPROCESSED&#x60;: 未処理 - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち - &#x60;CAPTURED&#x60;: 売上確定 - &#x60;CANCELED&#x60;: キャンセル - &#x60;EXPIRED&#x60;: 決済の期限切れ  | [optional] |
| **payment_term_from** | **String** | 支払い期限（始値）\\ 支払い期限（&#x60;payment_term&#x60;）を対象に範囲検索を行います。この日付以降に支払い期限が到来する決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_term_to** | **String** | 支払い期限（終値）\\ 支払い期限（&#x60;payment_term&#x60;）を対象に範囲検索を行います。この日付以前に支払い期限が到来する決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_from** | **String** | 支払い日時（始値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以降に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_to** | **String** | 支払い日時（終値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以前に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_from** | **String** | 更新日（始値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_to** | **String** | 更新日（終値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **overpayment_flag** | **String** | 多重支払フラグ\\ 同一のバーコードで複数回支払いが行われた決済を検索する場合&#x60;1&#x60;を指定します。  | [optional] |
| **cancel_overpayment_flag** | **String** | キャンセル後支払フラグ\\ キャンセルされた決済に対して支払いが行われた決済を検索する場合&#x60;1&#x60;を指定します。  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;status&#x60;: ステータス - &#x60;process_data&#x60;: 処理日時 - &#x60;total_amount&#x60;: 合計金額 - &#x60;payment_term&#x60;: 支払い期限 - &#x60;payment_date&#x60;: 支払い日時 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentListRetrievingKonbiniQueryParams.new(
  status: null,
  payment_term_from: null,
  payment_term_to: null,
  payment_date_from: null,
  payment_date_to: null,
  updated_from: null,
  updated_to: null,
  overpayment_flag: null,
  cancel_overpayment_flag: null,
  sort: updated␣desc,created␣asc
)
```

