# FincodeApiClient::ShopInfoV2Provides

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **Boolean** | 物販商材 提供有無\\ \\ ショップが物品販売を行うかどうか  | [optional] |
| **service** | **Boolean** | サービス商材 提供有無\\ \\ ショップがサービス提供を行うかどうか  | [optional] |
| **digital_contents** | **Boolean** | デジタルコンテンツ 提供有無\\ \\ ショップがデジタルコンテンツ販売を行うかどうか  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2Provides.new(
  product: false,
  service: false,
  digital_contents: true
)
```

