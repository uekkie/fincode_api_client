# FincodeApiClient::CustomerPaymentMethodDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 削除された決済手段のID | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodDeletingResponse.new(
  id: pm_**********************,
  delete_flag: null
)
```

