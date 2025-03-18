# FincodeApiClient::PaymentListRetrievingDirectDebitQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_date_from** | **String** | 振替指定日（始値）\\ 振替指定日（&#x60;target_date&#x60;）を対象に範囲検索を行います。この日付以降に振替指定日が設定されている決済情報を取得します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **target_date_to** | **String** | 振替指定日（終値）\\ 振替指定日（&#x60;target_date&#x60;）を対象に範囲検索を行います。この日付以前に振替指定日が設定されている決済情報を取得します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **withdrawal_date_from** | **String** | 引き落とし日（始値）\\ 引き落とし日（&#x60;withdrawal_date&#x60;）を対象に範囲検索を行います。この日付以降に引き落としが行われた決済情報を取得します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **withdrawal_date_to** | **String** | 引き落とし日（終値）\\ 引き落とし日（&#x60;withdrawal_date&#x60;）を対象に範囲検索を行います。この日付以前に引き落としが行われた決済情報を取得します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **result_code** | [**DirectDebitResultCode**](DirectDebitResultCode.md) | 振替結果コード\\ 指定した振替結果の決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;0&#x60;: 振替成功 - &#x60;1&#x60;: 残高不足（失敗） - &#x60;2&#x60;: 預金取引無し（失敗） - &#x60;3&#x60;: 購入者事由（失敗） - &#x60;4&#x60;: 依頼書未着・不備（失敗） - &#x60;8&#x60;: ショップ事由（失敗） - &#x60;9&#x60;: その他（失敗） - &#x60;E&#x60;: データエラー（失敗） - &#x60;N&#x60;: 振替結果未着（失敗）  | [optional] |
| **pay_pattern** | **String** | 課金種別\\ 指定した課金種別の決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;onetime&#x60;: サブスクリプションでない都度払い - &#x60;subscription&#x60;: サブスクリプション  | [optional] |
| **subscription_id** | **String** | サブスクリプションID\\ サブスクリプションIDを指定して、指定したサブスクリプションによって作成された決済情報を取得します。  | [optional] |
| **updated_from** | **String** | 更新日（始値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **updated_to** | **String** | 更新日（終値）\\ \\ 更新日時（&#x60;updated&#x60;）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;status&#x60;: ステータス - &#x60;process_date&#x60;: 処理日時 - &#x60;total_amount&#x60;: 合計金額 - &#x60;target_date&#x60;: 振替指定日 - &#x60;withdrawal_date&#x60;: 引き落とし日 - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentListRetrievingDirectDebitQueryParams.new(
  target_date_from: null,
  target_date_to: null,
  withdrawal_date_from: null,
  withdrawal_date_to: null,
  result_code: null,
  pay_pattern: null,
  subscription_id: null,
  updated_from: null,
  updated_to: null,
  sort: updated␣desc,created␣asc
)
```

