# FincodeApiClient::CustomerCardDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 削除されたカードのID | [optional] |
| **customer_id** | **String** | 削除されたカードを持つ顧客のID | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerCardDeletingResponse.new(
  id: cs_**********************,
  customer_id: c_**********************,
  delete_flag: null
)
```

