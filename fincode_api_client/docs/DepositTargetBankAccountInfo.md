# FincodeApiClient::DepositTargetBankAccountInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate** | **Boolean** | 法人口座か  - &#x60;true&#x60;: 法人口座 - &#x60;false&#x60;: 個人口座  | [optional] |
| **recipient_corporate_name** | **String** | 入金先法人名  | [optional] |
| **recipient_represntative_last_name** | **String** | 入金先代表者氏名 姓  | [optional] |
| **recipient_represntative_first_name** | **String** | 入金先代表者氏名 名  | [optional] |
| **bank_code** | **String** | 入金先 金融機関コード  | [optional] |
| **bank_name** | **String** | 入金先 金融機関名  | [optional] |
| **bank_name_kana** | **String** | 入金先 金融機関名 カナ  | [optional] |
| **branch_code** | **String** | 入金先 支店コード  | [optional] |
| **branch_name** | **String** | 入金先 支店名  | [optional] |
| **branch_name_kana** | **String** | 入金先 支店名 カナ  | [optional] |
| **account_kind** | **String** | 入金先 口座種別  - &#x60;0&#x60;: 普通 - &#x60;1&#x60;: 当座  | [optional] |
| **account_number** | **String** | 入金先 口座番号  | [optional] |
| **account_name** | **String** | 入金先 口座名義  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::DepositTargetBankAccountInfo.new(
  corporate: true,
  recipient_corporate_name: null,
  recipient_represntative_last_name: null,
  recipient_represntative_first_name: null,
  bank_code: null,
  bank_name: null,
  bank_name_kana: null,
  branch_code: null,
  branch_name: null,
  branch_name_kana: null,
  account_kind: null,
  account_number: null,
  account_name: null
)
```

