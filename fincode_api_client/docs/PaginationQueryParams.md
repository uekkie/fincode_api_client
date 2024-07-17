# FincodeApiClient::PaginationQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaginationQueryParams.new(
  page: null,
  limit: null,
  count_only: null
)
```

