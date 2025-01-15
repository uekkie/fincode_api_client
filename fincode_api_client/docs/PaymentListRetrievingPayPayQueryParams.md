# FincodeApiClient::PaymentListRetrievingPayPayQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス\\ 指定したステータスの決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;UNPROCESSED&#x60;: 未処理 - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち - &#x60;AUTHORIZED&#x60;: 仮売上 - &#x60;CAPTURED&#x60;: 売上確定 - &#x60;CANCELED&#x60;: キャンセル - &#x60;EXPIRED&#x60;: 決済の期限切れ  | [optional] |
| **auth_max_date_from** | **String** | 仮売上有効期限（始値）\\ 仮売上有効期限（&#x60;auth_max_date&#x60;）を対象に範囲検索を行います。この日付以降に仮売上が有効期限切れとなる決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **auth_max_date_to** | **String** | 仮売上有効期限（終値）\\ 仮売上有効期限（&#x60;auth_max_date&#x60;）を対象に範囲検索を行います。この日付以前に仮売上が有効期限切れとなる決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_from** | **String** | 支払い日時（始値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以降に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **payment_date_to** | **String** | 支払い日時（終値）\\ 支払い日時（&#x60;payment_date&#x60;）を対象に範囲検索を行います。この日付以前に支払いが行われた決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_from** | **String** | 更新日（始値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_to** | **String** | 更新日（終値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;status&#x60;: ステータス - &#x60;process_date&#x60;: 処理日時 - &#x60;total_amount&#x60;: 合計金額 - &#x60;auth_max_date&#x60;: 仮売上有効期限 - &#x60;payment_date&#x60;: 支払い日時 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentListRetrievingPayPayQueryParams.new(
  status: null,
  auth_max_date_from: null,
  auth_max_date_to: null,
  payment_date_from: null,
  payment_date_to: null,
  updated_from: null,
  updated_to: null,
  sort: updated␣desc,created␣asc
)
```

