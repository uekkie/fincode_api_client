# FincodeApiClient::ShopInfoV2PrepaidPointInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **how_to_use** | **String** | ポイント利用方法\\ \\ プリペイドポイントの利用方法  | [optional] |
| **about_expiration** | **String** | ポイント有効期限について\\ \\ プリペイドポイントの有効期限について  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2PrepaidPointInfo.new(
  how_to_use: ポイントは購入時に利用可能で、合計金額からポイントを差し引いて決済を行う。,
  about_expiration: ポイントは1年間有効。
)
```

