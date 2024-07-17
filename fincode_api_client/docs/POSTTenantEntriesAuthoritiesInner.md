# FincodeApiClient::POSTTenantEntriesAuthoritiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_id** | **Integer** | 権限ID | [optional] |
| **endpoint** | **String** | エンドポイント | [optional] |
| **method** | **String** | HTTPメソッド | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTTenantEntriesAuthoritiesInner.new(
  auth_id: 18,
  endpoint: /v1/payments,
  method: GET
)
```

