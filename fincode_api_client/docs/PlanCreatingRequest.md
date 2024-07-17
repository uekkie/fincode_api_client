# FincodeApiClient::PlanCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | プランID  | [optional] |
| **plan_name** | **String** | プラン名  |  |
| **description** | **String** | プランの説明  | [optional] |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。  | [optional] |
| **interval_pattern** | [**IntervalPattern**](IntervalPattern.md) |  | [optional] |
| **interval_count** | [**IntervalCount**](IntervalCount.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlanCreatingRequest.new(
  id: pl_*********************,
  plan_name: Basic Plan,
  description: Basic Plan Description,
  amount: 1000,
  tax: 100,
  interval_pattern: null,
  interval_count: null
)
```

