# FincodeApiClient::FincodeAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** | エラー内容を判定する場合はこの&#x60;error_code&#x60;の使用が推奨されます。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **error_message** | **String** | エラーの内容を表現するメッセージです。\\ このエラーメッセージは予告なく変更されるため、エラー内容を判定する場合はこの値ではなく&#x60;error_code&#x60;の使用が推奨されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::FincodeAPIError.new(
  error_code: E**********,
  error_message: null
)
```

