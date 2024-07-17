# FincodeApiClient::CustomerDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 削除された顧客のID | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerDeletingResponse.new(
  id: c_**********************,
  delete_flag: null
)
```

