# FincodeApiClient::POSTProviderReserveReservationListInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **Integer** | 追加申請ID | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTProviderReserveReservationListInner.new(
  reservation_id: 123456,
  shop_id: s_***********,
  provider: null
)
```

