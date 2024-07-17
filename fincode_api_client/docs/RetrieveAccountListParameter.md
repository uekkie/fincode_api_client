# FincodeApiClient::RetrieveAccountListParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **processed** | **String** | 確定日（入金サイクルの締め日）を月単位で絞り込みます。\\ 形式： &#x60;yyyy/MM&#x60;  | [optional] |
| **status** | [**DepositStatusCode**](DepositStatusCode.md) |  | [optional] |
| **scheduled_from** | **Date** | 入金予定日の範囲指定（開始日）を指定します。\\ この日付以降に入金が行われた売上入金情報を検索できます。\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **scheduled_to** | **Date** | 入金予定日の範囲指定（終了日）を指定します。\\ この日付以前に入金が行われた売上入金情報を検索できます。\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrieveAccountListParameter.new(
  page: null,
  limit: null,
  count_only: null,
  processed: 2022/05,
  status: null,
  scheduled_from: null,
  scheduled_to: null
)
```

