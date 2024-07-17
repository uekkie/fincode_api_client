# FincodeApiClient::PlanUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_name** | **String** | プラン名  | [optional] |
| **description** | **String** | プランの説明  | [optional] |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。  | [optional] |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。  | [optional] |
| **interval_pattern** | [**IntervalPattern**](IntervalPattern.md) |  | [optional] |
| **interval_count** | [**IntervalCount**](IntervalCount.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlanUpdatingRequest.new(
  plan_name: Basic Plan,
  description: Basic Plan Description,
  amount: 1000,
  tax: 100,
  interval_pattern: null,
  interval_count: null
)
```

