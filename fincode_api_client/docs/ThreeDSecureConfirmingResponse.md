# FincodeApiClient::ThreeDSecureConfirmingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tds2_trans_result** | [**ThreeDSecure2TransactionResult**](ThreeDSecure2TransactionResult.md) |  | [optional] |
| **tds2_trans_result_reason** | [**ThreeDSecure2TransactionResultReason**](ThreeDSecure2TransactionResultReason.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ThreeDSecureConfirmingResponse.new(
  tds2_trans_result: null,
  tds2_trans_result_reason: null
)
```

