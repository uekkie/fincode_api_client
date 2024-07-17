# FincodeApiClient::ExaminationInfoUpdatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID（テナント）  | [optional] |
| **platform_id** | **String** | プラットフォームID  | [optional] |
| **shop_type** | [**ShopType**](ShopType.md) |  | [optional] |
| **status_code** | [**ContractStatus**](ContractStatus.md) |  | [optional] |
| **deposit_cycle_master_id** | [**DepositCycleMasterId**](DepositCycleMasterId.md) |  | [optional] |
| **contract_detail** | [**ExaminationInfoContractDetail**](ExaminationInfoContractDetail.md) |  | [optional] |
| **shop_item_detail** | [**Array&lt;ContentInfo&gt;**](ContentInfo.md) | ショップ 取扱商材情報\\ \\ fincodeに登録されているショップの取扱商材情報  | [optional] |
| **contract_bank_account** | [**ContractBankAccountInfo**](ContractBankAccountInfo.md) | 銀行口座情報\\ \\ fincode上での売上入金を受け取るための銀行口座情報  | [optional] |
| **contract_input_status** | [**ExaminationInfoContractInputStatus**](ExaminationInfoContractInputStatus.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoUpdatingResponse.new(
  shop_id: s_***********,
  platform_id: p_***********,
  shop_type: null,
  status_code: null,
  deposit_cycle_master_id: null,
  contract_detail: null,
  shop_item_detail: null,
  contract_bank_account: null,
  contract_input_status: null
)
```

