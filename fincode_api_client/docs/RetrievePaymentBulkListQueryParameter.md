# FincodeApiClient::RetrievePaymentBulkListQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **process_plan_date_from** | **String** | 処理予定日の範囲指定（開始日）を指定します。\\ 処理予定日（&#x60;process_plan_date&#x60;）を対象に範囲検索を行います。この日付以降に処理予定日が設定された一括決済情報を検索します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **process_plan_date_to** | **String** | 処理予定日の範囲指定（終了日）を指定します。\\ 処理予定日（&#x60;process_plan_date&#x60;）を対象に範囲検索を行います。この日付以前に処理予定日が設定された一括決済情報を検索します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **status** | [**PaymentBulkStatus**](PaymentBulkStatus.md) | 一括決済 ステータス。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;CHECKING&#x60;: チェック中 - &#x60;CHECKED&#x60;: チェック済み - &#x60;RUNNING&#x60;: 決済処理中 - &#x60;COMPLETED&#x60;: 完了 - &#x60;ERROR&#x60;: エラー  | [optional] |
| **pay_type** | [**PaymentBulkPayType**](PaymentBulkPayType.md) |  | [optional] |
| **file_name** | **String** | 一括決済データファイル名\\ &#x60;file_name&#x60;に対する部分一致検索を行います。  | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |
| **created_from** | **String** | 作成日時の範囲指定（開始日）を指定します。\\ 作成日時（&#x60;created&#x60;）を対象に範囲検索を行います。この日付以降に登録された一括決済情報を検索します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **created_to** | **String** | 作成日時の範囲指定（終了日）を指定します。\\ 作成日時（&#x60;created&#x60;）を対象に範囲検索を行います。この日付以前に登録された一括決済情報を検索します。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;created␣asc,process_plan_date␣desc&#x60;\\ \\ ソート可能な項目  - &#x60;process_plan_date&#x60;: 一括決済 処理予定日 - &#x60;status&#x60;: ステータス - &#x60;pay_type&#x60;: 決済種別 - &#x60;file_name&#x60;: 一括決済データファイル名 - &#x60;delete_flag&#x60;: 削除フラグ - &#x60;created&#x60;: 作成日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrievePaymentBulkListQueryParameter.new(
  page: null,
  limit: null,
  count_only: null,
  process_plan_date_from: 2022/05/01,
  process_plan_date_to: 2022/05/31,
  status: null,
  pay_type: null,
  file_name: null,
  delete_flag: null,
  created_from: 2022/05/01,
  created_to: 2022/05/31,
  sort: updated␣desc,created␣asc
)
```

