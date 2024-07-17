# FincodeApiClient::PlanListRetrievingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | 総件数 | [optional] |
| **last_page** | **Integer** | 最後のページのページ数 | [optional] |
| **current_page** | **Integer** | 現在のページのページ数 | [optional] |
| **limit** | **Integer** | 1ページの最大件数 | [optional] |
| **link_next** | **String** | 次のページのコンテンツを取得するためのURL | [optional] |
| **link_previous** | **String** | 前のページのコンテンツを取得するためのURL | [optional] |
| **list** | [**Array&lt;Plan&gt;**](Plan.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlanListRetrievingResponse.new(
  total_count: 100,
  last_page: 20,
  current_page: 3,
  limit: 5,
  link_next: /v1/{resource}?limit&#x3D;5&amp;page&#x3D;4,
  link_previous: /v1/{resource}?limit&#x3D;5&amp;page&#x3D;2,
  list: null
)
```

