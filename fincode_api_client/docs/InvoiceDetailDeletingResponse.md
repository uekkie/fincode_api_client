# FincodeApiClient::InvoiceDetailDeletingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  | [optional] |
| **delete_flag** | **String** | 削除フラグ       - &#x60;1&#x60;: 成功  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceDetailDeletingResponse.new(
  id: null,
  delete_flag: null
)
```

