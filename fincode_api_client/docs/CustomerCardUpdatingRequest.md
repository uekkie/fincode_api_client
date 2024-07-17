# FincodeApiClient::CustomerCardUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | カードトークン\\ \\ fincode JSの&#x60;tokens&#x60;メソッドで取得したトークンを指定します。\\ JavaScriptの利用については、[JavaScriptリファレンス](https://docs.fincode.jp/js)をご参照ください。  | [optional] |
| **default_flag** | [**DefaultFlag**](DefaultFlag.md) | デフォルトフラグ。\\ 指定した場合のみ更新されます。  | [optional] |
| **holder_name** | **String** | ※ &#x60;token&#x60;に入力がある場合は無視\\ カード名義人名  | [optional] |
| **expire** | **String** | ※ &#x60;token&#x60;に入力がある場合は無視\\ カード有効期限  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerCardUpdatingRequest.new(
  token: 34567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890,
  default_flag: null,
  holder_name: TARO EPSILON,
  expire: 4012
)
```

