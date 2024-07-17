# FincodeApiClient::PaymentBulkErrorDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | 行数  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **errors** | [**Array&lt;FincodeAPIError&gt;**](FincodeAPIError.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkErrorDetail.new(
  number: null,
  order_id: o_**********************,
  errors: null
)
```

