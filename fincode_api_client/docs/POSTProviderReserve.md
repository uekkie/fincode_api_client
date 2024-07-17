# FincodeApiClient::POSTProviderReserve

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_list** | [**Array&lt;POSTProviderReserveReservationListInner&gt;**](POSTProviderReserveReservationListInner.md) | 決済手段追加 申請リスト\\ \\ 申請中の決済手段のリストです。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTProviderReserve.new(
  reservation_list: null
)
```

