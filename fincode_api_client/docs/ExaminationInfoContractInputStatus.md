# FincodeApiClient::ExaminationInfoContractInputStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | [**ContractInputStatus**](ContractInputStatus.md) |  | [optional] |
| **contract_info_input** | **Boolean** | 契約情報入力完了フラグ\\ \\ 契約情報の入力が完了しているかどうか  | [optional] |
| **shop_info_input** | **Boolean** | ショップ情報入力完了フラグ\\ \\ ショップ情報の入力が完了しているかどうか  | [optional] |
| **account_info_input** | **Boolean** | 銀行口座情報入力完了フラグ\\ \\ 銀行口座情報の入力が完了しているかどうか  | [optional] |
| **card_info_input** | **Boolean** | 請求先クレジットカード情報入力完了フラグ\\ \\ fincodeが請求を行う際に請求先となるクレジットカード情報の入力が完了しているかどうか  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoContractInputStatus.new(
  status_code: null,
  contract_info_input: null,
  shop_info_input: null,
  account_info_input: null,
  card_info_input: null
)
```

