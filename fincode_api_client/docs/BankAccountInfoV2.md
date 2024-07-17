# FincodeApiClient::BankAccountInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | 金融機関コード  | [optional] |
| **branch_code** | **String** | 支店コード  |  |
| **account_kind** | **Float** | 口座種別  - &#x60;0&#x60;: 普通 - &#x60;1&#x60;: 当座  |  |
| **account_number** | **String** | 口座番号  |  |
| **account_name** | **String** | 口座名義  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::BankAccountInfoV2.new(
  bank_code: 0001,
  branch_code: 001,
  account_kind: 0,
  account_number: 1234567,
  account_name: サンプル株式会社
)
```

