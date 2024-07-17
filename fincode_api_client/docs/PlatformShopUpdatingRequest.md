# FincodeApiClient::PlatformShopUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **examination_master_id** | [**ExaminationMasterId**](ExaminationMasterId.md) |  |  |
| **platform_rate** | **String** | （標準）プラットフォーム利用料率。\\ 個別のプラットフォーム利用料率が設定されていないテナントが&#x60;id&#x60;で指定した決済手段で決済を行うと、このプラットフォーム利用料率が適用されます。\\ \\ 特定のテナントに個別のプラットフォーム利用料を適用するには テナントショップ 更新API を使用します。  | [optional] |
| **fixed_fee** | **String** | （標準）プラットフォーム利用料 最低料金。\\ テナントが&#x60;examination_master_id&#x60;で指定した決済手段で決済を行った際、&#x60;platform_rate&#x60;による利用料がこの最低料金を下回ると、この最低料金が適用されます。  | [optional] |
| **web_registration_fee** | **String** | （標準）プラットフォーム利用料 Web登録手数料。\\ テナントにおいて、口座振替における振替用口座登録（Web登録）に成功した際に適用されるWeb登録手数料です。\\ ※ 口座振替のみ  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlatformShopUpdatingRequest.new(
  examination_master_id: null,
  platform_rate: 5.0,
  fixed_fee: 120,
  web_registration_fee: 480
)
```

