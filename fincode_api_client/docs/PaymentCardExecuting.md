# FincodeApiClient::PaymentCardExecuting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acs_url** | **String** | 3Dセキュア認証初期化URL   決済実行後に購入者に遷移させる3Dセキュア認証ページのURLです。    3Dセキュア認証に必要なAPIの呼び出しやコールバック処理をすべて加盟店で実装する場合に使用します。   このURLに遷移後3Dセキュア認証が開始し、&#x60;tds2_ret_url&#x60;に後続処理のためのデータがPOSTメソッドで送信されます。   &#x60;tds2_ret_url&#x60;が指定された場合のみ返却されます。  | [optional] |
| **redirect_url** | **String** | リダイレクトURL   決済実行後に購入者に遷移させる3Dセキュア認証ページのURLです。    お客様のブラウザとfincode間で3Dセキュア認証を自動で行う場合に使用します。   このURLに遷移後お客様のブラウザとfincode間で3Dセキュア認証を自動で行います。   認証後、結果に応じて&#x60;return_url&#x60;または&#x60;return_url_on_failure&#x60;に自動で遷移します。   &#x60;tds2_ret_url&#x60;が指定されなかった場合のみ返却されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardExecuting.new(
  acs_url: null,
  redirect_url: null
)
```

