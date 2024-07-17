# FincodeApiClient::ExaminationInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | [**ContractStatus**](ContractStatus.md) |  | [optional] |
| **contract_info** | [**ContractInfoV2**](ContractInfoV2.md) | 契約情報\\ \\ fincodeと契約をする事業者の情報  | [optional] |
| **shop_info** | [**ShopInfoV2**](ShopInfoV2.md) | ショップ情報\\ \\ fincodeにおけるショップの情報  | [optional] |
| **bank_account_info** | [**BankAccountInfoV2**](BankAccountInfoV2.md) | 銀行口座情報\\ \\ fincode上での売上入金を受け取るための銀行口座情報  | [optional] |
| **deposit_cycle_info** | [**DepositCycleInfoV2**](DepositCycleInfoV2.md) | 入金サイクル情報\\ \\ fincode上での売上入金の入金サイクルに関する情報  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoV2.new(
  status_code: null,
  contract_info: null,
  shop_info: null,
  bank_account_info: null,
  deposit_cycle_info: null
)
```

