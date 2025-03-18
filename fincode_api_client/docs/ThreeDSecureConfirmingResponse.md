# FincodeApiClient::ThreeDSecureConfirmingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tds2_trans_result** | [**ThreeDSecure2TransactionResult**](ThreeDSecure2TransactionResult.md) |  | [optional] |
| **tds2_trans_result_reason** | [**ThreeDSecure2TransactionResultReason**](ThreeDSecure2TransactionResultReason.md) |  | [optional] |
| **pay_type** | **String** | 決済種別   この決済で利用する決済手段です。未指定の場合、&#x60;Card&#x60;となります。  - &#x60;Card&#x60;: カード（デフォルト） - &#x60;Googlepay&#x60;: Google Pay  | [optional][default to &#39;Card&#39;] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ThreeDSecureConfirmingResponse.new(
  tds2_trans_result: null,
  tds2_trans_result_reason: null,
  pay_type: null
)
```

