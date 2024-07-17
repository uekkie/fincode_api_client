# FincodeApiClient::ThreeDSecureAuthorizingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tds2_trans_result** | [**ThreeDSecure2TransactionResult**](ThreeDSecure2TransactionResult.md) |  | [optional] |
| **tds2_trans_result_reason** | [**ThreeDSecure2TransactionResultReason**](ThreeDSecure2TransactionResultReason.md) |  | [optional] |
| **challenge_url** | **String** | 3Dセキュア2.0認証チャレンジURL\\ \\ 購入者による&#x60;acs_url&#x60;へのアクセス後、カード発行会社によって追加のチャレンジ認証が必要と判定された場合、このパラメータにURLが設定されて返却されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ThreeDSecureAuthorizingResponse.new(
  tds2_trans_result: null,
  tds2_trans_result_reason: null,
  challenge_url: null
)
```

