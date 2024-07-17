# FincodeApiClient::PaymentCardExecuting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acs_url** | **String** | 3Dセキュア認証初期化URL\\ \\ 決済実行後、3Dセキュア認証を開始するために購入者に遷移させるURLです。\\ このURLに遷移後3Dセキュア認証が開始し、ブラウザ情報がfincodeに送信され、&#x60;tds2_ret_url&#x60;に後続処理のためのデータがPOSTメソッドで送信されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardExecuting.new(
  acs_url: null
)
```

