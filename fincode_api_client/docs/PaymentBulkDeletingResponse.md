# FincodeApiClient::PaymentBulkDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 削除された一括決済のID | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkDeletingResponse.new(
  id: null,
  delete_flag: null
)
```

