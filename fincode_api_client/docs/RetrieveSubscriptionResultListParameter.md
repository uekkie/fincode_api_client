# FincodeApiClient::RetrieveSubscriptionResultListParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **pay_type** | [**PropertiesPayType**](PropertiesPayType.md) |  |  |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;process_date␣asc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;process_date&#x60;: 処理日時 - &#x60;created&#x60;: 作成日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrieveSubscriptionResultListParameter.new(
  page: null,
  limit: null,
  count_only: null,
  pay_type: null,
  sort: updated␣desc,created␣asc
)
```

