# FincodeApiClient::POSTJoinTenants

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ショップID  | [optional] |
| **shop_name** | **String** | ショップ名  | [optional] |
| **shop_name_kana** | **String** | ショップ名（カナ）  | [optional] |
| **shop_type** | [**ShopType**](ShopType.md) |  | [optional] |
| **platform_id** | **String** | プラットフォームID  | [optional] |
| **platform_name** | **String** | プラットフォーム名  | [optional] |
| **shared_customer_flag** | [**SharedCustomerFlag**](SharedCustomerFlag.md) |  | [optional] |
| **customer_group_id** | **String** | 顧客情報共有グループID\\ fincodeは同じ顧客情報共有グループIDを持つショップ間で顧客情報を共有します。  | [optional] |
| **send_mail_address** | **String** | 通知先メールアドレス  | [optional] |
| **shop_mail_address** | **String** | ショップメールアドレス  | [optional] |
| **log_keep_days** | **Integer** | ログ保存日数  | [optional] |
| **api_version** | **String** | APIバージョン  | [optional] |
| **api_key_display_flag** | [**ApiKeyDisplayFlag**](ApiKeyDisplayFlag.md) |  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTJoinTenants.new(
  id: s_***********,
  shop_name: My Shop,
  shop_name_kana: マイショップ,
  shop_type: null,
  platform_id: p_***********,
  platform_name: My Platform,
  shared_customer_flag: null,
  customer_group_id: cg_***********,
  send_mail_address: send@example.com,
  shop_mail_address: shop@example.com,
  log_keep_days: null,
  api_version: 20211001,
  api_key_display_flag: null,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

