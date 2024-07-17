# FincodeApiClient::ShopInfoV2UseOfFincode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **used_on_web** | **Boolean** | Webサイト利用有無\\ \\ Webサイト/Webアプリでfincodeを使用するかどうか  - &#x60;true&#x60;: Webサイト/Webアプリでfincodeを使用する  | [optional] |
| **used_on_app** | **Boolean** | ネイティブアプリ利用有無\\ \\ ネイティブアプリでfincodeを使用するかどうか  - &#x60;true&#x60;: ネイティブアプリでfincodeを使用する  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2UseOfFincode.new(
  used_on_web: true,
  used_on_app: true
)
```

