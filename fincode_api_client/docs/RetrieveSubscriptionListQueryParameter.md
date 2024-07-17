# FincodeApiClient::RetrieveSubscriptionListQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) | 決済種別\\ 一覧で取得する対象の決済種別を指定します。  - &#x60;Card&#x60;: カード - &#x60;Directdebit&#x60;: 口座振替  |  |
| **id** | **String** | サブスクリプションID  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **plan_id** | **String** | プランID  | [optional] |
| **status** | [**SubscriptionStatus**](SubscriptionStatus.md) | ステータス\\ 指定したステータスのサブスクリプション情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;ACTIVE&#x60;: サブスクリプションが有効 - &#x60;RUNNING&#x60;: 課金処理中 - &#x60;CANCELED&#x60;: 解約済み - &#x60;INCOMPLETE&#x60;: サブスクリプションの登録時点で何らかの理由により失敗  | [optional] |
| **total_amount_min** | **Integer** | 合計金額（始値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以上の合計金額を持つサブスクリプション情報を取得します。  | [optional] |
| **total_amount_max** | **Integer** | 合計金額（終値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以下の合計金額を持つサブスクリプション情報を取得します。  | [optional] |
| **interval_pattern** | [**PropertiesIntervalPattern**](PropertiesIntervalPattern.md) |  | [optional] |
| **start_date_from** | **String** | 課金開始日（始値）\\ 課金開始日（&#x60;start_date&#x60;）を対象に範囲検索を行います。この日付以降に課金開始されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **start_date_to** | **String** | 課金開始日（終値）\\ 課金開始日（&#x60;start_date&#x60;）を対象に範囲検索を行います。この日付以前に課金開始されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **stop_date_from** | **String** | 課金停止日（始値）\\ 課金停止日（&#x60;stop_date&#x60;）を対象に範囲検索を行います。この日付以降に課金停止されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **stop_date_to** | **String** | 課金停止日（終値）\\ 課金停止日（&#x60;stop_date&#x60;）を対象に範囲検索を行います。この日付以前に課金停止されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **next_charge_date_from** | **String** | 次回課金日（始値）\\ 次回課金日（&#x60;next_charge_date&#x60;）を対象に範囲検索を行います。この日付以降に次回課金されるサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **next_charge_date_to** | **String** | 次回課金日（終値）\\ 次回課金日（&#x60;next_charge_date&#x60;）を対象に範囲検索を行います。この日付以前に次回課金されるサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **update_date_from** | **String** | 更新日時（始値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **update_date_to** | **String** | 更新日時（終値）\\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新されたサブスクリプション情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;plan_id&#x60;: プランID - &#x60;total_amount&#x60;: 合計金額 - &#x60;start_date&#x60;: 課金開始日 - &#x60;stop_date&#x60;: 課金停止日 - &#x60;next_charge_date&#x60;: 次回課金日 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrieveSubscriptionListQueryParameter.new(
  page: null,
  limit: null,
  count_only: null,
  pay_type: null,
  id: su_*********************,
  customer_id: c_**********************,
  plan_id: pl_*********************,
  status: null,
  total_amount_min: 1100,
  total_amount_max: 1100,
  interval_pattern: null,
  start_date_from: null,
  start_date_to: null,
  stop_date_from: null,
  stop_date_to: null,
  next_charge_date_from: null,
  next_charge_date_to: null,
  update_date_from: null,
  update_date_to: null,
  sort: updated␣desc,created␣asc
)
```

