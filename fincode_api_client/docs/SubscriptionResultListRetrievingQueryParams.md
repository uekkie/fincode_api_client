# FincodeApiClient::SubscriptionResultListRetrievingQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PropertiesPayType**](PropertiesPayType.md) |  |  |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;process_date␣asc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;process_date&#x60;: 処理日時 - &#x60;created&#x60;: 作成日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::SubscriptionResultListRetrievingQueryParams.new(
  pay_type: null,
  sort: updated␣desc,created␣asc
)
```

