# FincodeApiClient::ExaminationInfoV2UpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_info** | [**ContractInfoV2**](ContractInfoV2.md) | 契約情報\\ \\ fincodeと契約をする事業者の情報  | [optional] |
| **shop_info** | [**ShopInfoV2**](ShopInfoV2.md) | ショップ情報\\ \\ fincodeにおけるショップの情報  | [optional] |
| **bank_account_info** | [**BankAccountInfoV2**](BankAccountInfoV2.md) | 銀行口座情報\\ \\ fincode上での売上入金を受け取るための銀行口座情報  | [optional] |
| **deposit_cycle_info** | [**DepositCycleInfoV2**](DepositCycleInfoV2.md) | 入金サイクル情報\\ \\ fincode上での売上入金の入金サイクルに関する情報  | [optional] |
| **merchant_category_code** | **String** | 業種コード\\ \\ fincodeから指定するよう要求されている場合にのみ指定します。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoV2UpdatingRequest.new(
  contract_info: null,
  shop_info: null,
  bank_account_info: null,
  deposit_cycle_info: null,
  merchant_category_code: null
)
```

