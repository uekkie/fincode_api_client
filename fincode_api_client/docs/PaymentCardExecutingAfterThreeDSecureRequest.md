# FincodeApiClient::PaymentCardExecutingAfterThreeDSecureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別   この決済で利用する決済手段です。  - &#x60;Googlepay&#x60;: Google Pay  |  |
| **access_id** | **String** | 取引ID  |  |
| **pa_res** | **String** | ※ 閉塞機能\\ 3Dセキュアサービス結果電文\\ \\ 3Dセキュア1.0利用時のみ必須。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardExecutingAfterThreeDSecureRequest.new(
  pay_type: null,
  access_id: a_**********************,
  pa_res: null
)
```

