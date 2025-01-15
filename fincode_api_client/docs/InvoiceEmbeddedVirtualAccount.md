# FincodeApiClient::InvoiceEmbeddedVirtualAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_account_id** | **String** | バーチャル口座ID  | [optional] |
| **branch_name** | **String** | 支店名  | [optional] |
| **branch_code** | **String** | 支店コード  | [optional] |
| **account_number** | **String** | 口座番号  | [optional] |
| **account_name** | **String** | 口座名義  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceEmbeddedVirtualAccount.new(
  virtual_account_id: null,
  branch_name: null,
  branch_code: null,
  account_number: null,
  account_name: null
)
```

