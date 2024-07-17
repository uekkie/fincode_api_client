# FincodeApiClient::CustomerCardCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | カードトークン\\ \\ fincode JSの&#x60;tokens&#x60;メソッドで取得したトークンを指定します。\\ JavaScriptの利用については、[JavaScriptリファレンス](https://docs.fincode.jp/js)をご参照ください。  |  |
| **default_flag** | [**DefaultFlag**](DefaultFlag.md) |  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerCardCreatingRequest.new(
  token: 34567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890,
  default_flag: null
)
```

