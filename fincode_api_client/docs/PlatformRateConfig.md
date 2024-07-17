# FincodeApiClient::PlatformRateConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**ExaminationMasterId**](ExaminationMasterId.md) |  | [optional] |
| **platform_rate** | **Float** | （標準）プラットフォーム利用料率。\\ 個別のプラットフォーム利用料率が設定されていないテナントが&#x60;id&#x60;で指定した決済手段で決済を行うと、このプラットフォーム利用料率が適用されます。\\ \\ 特定のテナントに個別のプラットフォーム利用料を適用するには テナントショップ 更新API を使用します。  | [optional] |
| **fixed_fee** | **Integer** | （標準）プラットフォーム利用料 最低料金。\\ テナントが&#x60;examination_master_id&#x60;で指定した決済手段で決済を行った際、&#x60;platform_rate&#x60;による利用料がこの最低料金を下回ると、この最低料金が適用されます。  | [optional] |
| **web_registration_fee** | **Float** | （標準）プラットフォーム利用料 Web登録手数料。\\ テナントにおいて、口座振替における振替用口座登録（Web登録）に成功した際に適用されるWeb登録手数料です。\\ ※ 口座振替のみ  | [optional] |
| **paypay_content_category_type** | **Integer** | PayPay審査により決定されるPayPay商材カテゴリー。  - &#x60;1&#x60;: 物販／サービスショップ - &#x60;2&#x60;: デジタルコンテンツショップ  ※ PayPayのみ  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlatformRateConfig.new(
  id: null,
  platform_rate: 5,
  fixed_fee: 120,
  web_registration_fee: 480,
  paypay_content_category_type: 1
)
```

