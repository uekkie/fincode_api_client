# FincodeApiClient::ShopInfoV2SiteInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | WebサイトURL\\ \\ fincode審査チームがサイトを閲覧するためのURL  |  |
| **credential** | **String** | ログイン情報\\ \\ fincode審査チームがサイトを閲覧するためのログイン情報  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2SiteInfo.new(
  url: https://example.com,
  credential: ID: example_user,Password: password
)
```

