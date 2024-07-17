# FincodeApiClient::ExaminationInfoUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_contract_detail** | **Boolean** | 契約情報更新フラグ\\ \\ 契約情報の更新を行うかどうか  - &#x60;true&#x60;: 更新を行う  | [optional] |
| **update_shop** | **Boolean** | ショップ情報更新フラグ\\ \\ ショップ情報の更新を行うかどうか  - &#x60;true&#x60;: 更新を行う  | [optional] |
| **update_bank_account** | **Boolean** | 入金用銀行口座情報更新フラグ\\ \\ fincodeの売上の入金先となる銀行口座情報の更新を行うかどうか  - &#x60;true&#x60;: 更新を行う  | [optional] |
| **update_deposit_cycle** | **Boolean** | 入金サイクル情報更新フラグ\\ \\ fincodeの売上の入金サイクル情報の更新を行うかどうか  - &#x60;true&#x60;: 更新を行う  | [optional] |
| **deposit_cycle_master_id** | [**DepositCycleMasterId**](DepositCycleMasterId.md) |  | [optional] |
| **contract_detail** | [**ExaminationInfoUpdatingRequestContractDetail**](ExaminationInfoUpdatingRequestContractDetail.md) |  | [optional] |
| **shop_item_detail** | [**Array&lt;ContentInfo&gt;**](ContentInfo.md) | ショップ 取扱商材情報\\ \\ fincodeに登録するショップの取扱商材情報  | [optional] |
| **contract_bank_account** | [**ContractBankAccountInfo**](ContractBankAccountInfo.md) | 銀行口座情報\\ \\ fincode上での売上入金を受け取るための銀行口座情報  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoUpdatingRequest.new(
  update_contract_detail: null,
  update_shop: null,
  update_bank_account: null,
  update_deposit_cycle: null,
  deposit_cycle_master_id: null,
  contract_detail: null,
  shop_item_detail: null,
  contract_bank_account: null
)
```

