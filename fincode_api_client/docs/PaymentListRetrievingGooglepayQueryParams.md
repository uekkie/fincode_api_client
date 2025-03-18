# FincodeApiClient::PaymentListRetrievingGooglepayQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_field_1** | **Object** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **Object** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **Object** | 加盟店自由項目 3  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス\\ 指定したステータスの決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;UNPROCESSED&#x60;: 未処理 - &#x60;AUTHORIZED&#x60;: 仮売上 - &#x60;CAPTURED&#x60;: 売上確定 - &#x60;CANCELED&#x60;: キャンセル - &#x60;AUTHENTICATED&#x60;: 未処理（3Dセキュア認証待ち）  | [optional] |
| **auth_max_date_from** | **String** | 仮売上有効期限（始値）\\ 仮売上有効期限（&#x60;auth_max_date&#x60;）を対象に範囲検索を行います。この日付以降に仮売上が有効期限切れとなる決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **auth_max_date_to** | **String** | 仮売上有効期限（終値）\\ 仮売上有効期限（&#x60;auth_max_date&#x60;）を対象に範囲検索を行います。この日付以前に仮売上が有効期限切れとなる決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **update_date_from** | **String** | 更新日時（始値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **update_date_to** | **String** | 更新日時（終値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;status&#x60;: ステータス - &#x60;process_date&#x60;: 処理日時 - &#x60;total_amount&#x60;: 合計金額 - &#x60;auth_max_date&#x60;: 仮売上有効期限 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentListRetrievingGooglepayQueryParams.new(
  client_field_1: null,
  client_field_2: null,
  client_field_3: null,
  status: null,
  auth_max_date_from: null,
  auth_max_date_to: null,
  update_date_from: null,
  update_date_to: null,
  sort: updated␣desc,created␣asc
)
```

