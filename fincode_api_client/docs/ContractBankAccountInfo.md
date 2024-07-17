# FincodeApiClient::ContractBankAccountInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_name** | **String** | 銀行名  | [optional] |
| **bank_name_kana** | **String** | 銀行名（カナ）  | [optional] |
| **bank_code** | **String** | 金融機関コード  | [optional] |
| **branch_code** | **String** | 支店コード  | [optional] |
| **branch_name** | **String** | 支店名  | [optional] |
| **branch_name_kana** | **String** | 支店名（カナ）  | [optional] |
| **account_kind** | **Float** | 口座種別  - &#x60;0&#x60;: 普通 - &#x60;1&#x60;: 当座  | [optional] |
| **account_number** | **String** | 口座番号  | [optional] |
| **account_name** | **String** | 口座名義（カタカナ）  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ContractBankAccountInfo.new(
  bank_name: null,
  bank_name_kana: null,
  bank_code: null,
  branch_code: null,
  branch_name: null,
  branch_name_kana: null,
  account_kind: null,
  account_number: null,
  account_name: null
)
```

