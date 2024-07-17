# FincodeApiClient::TenantShopUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **examination_master_id** | [**ExaminationMasterId**](ExaminationMasterId.md) |  | [optional] |
| **platform_rate** | **String** | （個別）プラットフォーム利用料率。\\ このテナントが&#x60;id&#x60;で指定した決済手段で決済を行うと、このプラットフォーム利用料率が適用されます。  | [optional] |
| **fixed_fee** | **String** | （個別）プラットフォーム利用料 最低料金。\\ このテナントが&#x60;examination_master_id&#x60;で指定した決済手段で決済を行った際、&#x60;platform_rate&#x60;による利用料がこの最低料金を下回ると、この最低料金が適用されます。  | [optional] |
| **web_registration_fee** | **String** | （個別）プラットフォーム利用料 Web登録手数料。\\ このテナントに紐づく顧客が口座振替における振替用口座登録（Web登録）に成功した際に適用されるWeb登録手数料です。  | [optional] |
| **paypay_content_category_type** | [**PaypayContentCategoryType**](PaypayContentCategoryType.md) | PayPay審査により決定されるPayPay商材カテゴリー。\\ PayPayのプラットフォーム利用料（&#x60;platform_rate&#x60;）はこの&#x60;paypay_content_category_type&#x60;ごとに設定します。  - &#x60;1&#x60;: 物販／サービスショップ - &#x60;2&#x60;: デジタルコンテンツショップ  ※ PayPayのみ  | [optional] |
| **api_key_display_flag** | [**ApiKeyDisplayFlag**](ApiKeyDisplayFlag.md) | APIキー表示フラグ\\ &#x60;1&#x60;を指定するとテナントショップの管理画面上にAPIキーが表示されるようになります。  - &#x60;0&#x60;: 表示しない - &#x60;1&#x60;: 表示する  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::TenantShopUpdatingRequest.new(
  examination_master_id: null,
  platform_rate: 5.0,
  fixed_fee: 120,
  web_registration_fee: 480,
  paypay_content_category_type: null,
  api_key_display_flag: null
)
```

