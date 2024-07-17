# FincodeApiClient::RetrievePlanListQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **total_amount_min** | **Integer** | 合計金額（始値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以上の合計金額を持つプラン情報を取得します。  | [optional] |
| **total_amount_max** | **Integer** | 合計金額（終値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以下の合計金額を持つプラン情報を取得します。  | [optional] |
| **interval_pattern** | **String** | 課金間隔  - &#x60;month&#x60;: 月 - &#x60;year&#x60;: 年  | [optional] |
| **update_date_from** | **String** | 更新日時（始値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **update_date_to** | **String** | 更新日時（終値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **plan_name** | **String** | プラン名\\ &#x60;plan_name&#x60;に対する部分一致検索を行います。  | [optional] |
| **delete_flag** | **String** | 削除済みフラグ  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;total_amount&#x60;: 合計金額 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrievePlanListQueryParameter.new(
  page: null,
  limit: null,
  count_only: null,
  total_amount_min: null,
  total_amount_max: null,
  interval_pattern: null,
  update_date_from: null,
  update_date_to: null,
  plan_name: Gold Plan,
  delete_flag: null,
  sort: updated␣desc,created␣asc
)
```

