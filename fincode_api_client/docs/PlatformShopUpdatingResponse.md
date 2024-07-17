# FincodeApiClient::PlatformShopUpdatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ショップID  | [optional] |
| **shop_name** | **String** | ショップ名  | [optional] |
| **shop_name_kana** | **String** | ショップ名（カナ）  | [optional] |
| **shop_type** | [**ShopType**](ShopType.md) |  | [optional] |
| **platform_id** | **String** | プラットフォームID  | [optional] |
| **platform_name** | **String** | プラットフォーム名  | [optional] |
| **shared_customer_flag** | **String** | 顧客情報共有フラグ  - &#x60;0&#x60;: 顧客情報を共有しない&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;顧客情報は各テナントごとに管理され、各テナントは自ショップに登録された顧客に対してのみ決済を行えます。&lt;/span&gt; - &#x60;1&#x60;: 顧客情報を共有する&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;顧客情報はプラットフォーム全体で共有され、いずれのテナントもいずれの顧客に対し決済を行えます。&lt;/span&gt;  | [optional] |
| **customer_group_id** | **String** | 顧客情報共有グループID\\ fincodeは同じ顧客情報共有グループIDを持つショップ間で顧客情報を共有します。  | [optional] |
| **platform_rate_list** | [**Array&lt;PlatformRateConfig&gt;**](PlatformRateConfig.md) | 決済手段ごとに存在するプラットフォーム手数料設定のリスト  | [optional] |
| **send_mail_address** | **String** | 通知先メールアドレス  | [optional] |
| **shop_mail_address** | **String** | ショップメールアドレス  | [optional] |
| **log_keep_days** | **String** | ログ保存日数  | [optional] |
| **api_version** | **String** | APIバージョン  | [optional] |
| **api_key_display_flag** | **String** | 管理画面におけるAPIキー表示フラグ。  - &#x60;0&#x60;: 表示しない - &#x60;1&#x60;: 表示する  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlatformShopUpdatingResponse.new(
  id: s_***********,
  shop_name: My Shop,
  shop_name_kana: マイショップ,
  shop_type: null,
  platform_id: p_***********,
  platform_name: My Platform,
  shared_customer_flag: 0,
  customer_group_id: cg_***********,
  platform_rate_list: null,
  send_mail_address: send@example.com,
  shop_mail_address: shop@example.com,
  log_keep_days: null,
  api_version: 20211001,
  api_key_display_flag: 0,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

