# FincodeApiClient::AccountDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail_id** | **Integer** | 売上入金詳細 ID  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **scheduled_deposit_date** | **String** | 入金予定日   形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **trade_type** | [**AccountDetailTradeType**](AccountDetailTradeType.md) |  | [optional] |
| **payment_method** | [**AccountPaymentMethod**](AccountPaymentMethod.md) |  | [optional] |
| **amount_correction_type** | **String** | 課金訂正内容  | [optional] |
| **account_id** | **Integer** | 精算ID  | [optional] |
| **order_id** | **String** | オーダー（決済）ID  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **deposit_amount** | **Integer** | この取引による入金額（参考値）\\ ※実際の入金額は全ての売上入金詳細の入金額の合算した後に計算される消費税金額によるため、この値は参考値となります。  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **fee_total** | **Integer** | fincode 決済手数料（税抜）  | [optional] |
| **fee_total_taxin** | **Integer** | fincode 決済手数料（税込）  | [optional] |
| **fee_profit_tax** | **Integer** | fincode 決済手数料にかかる消費税  | [optional] |
| **fee_profit** | **Integer** | fincode 決済手数料のうち、課税対象金額  | [optional] |
| **fee_cost** | **Integer** | fincode 決済手数料のうち、非課税対象金額  | [optional] |
| **fee_rate_total** | **Float** | fincode 決済手数料率  | [optional] |
| **fixed_fee** | **Integer** | fincode 決済手数料 最低手数料  | [optional] |
| **apply_type** | **Integer** | fincode手数料率 適用区分  - &#x60;0&#x60;: 料率。&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済による売上に対し、fincode 決済手数料率が適用されたことを示します。&lt;/span&gt; - &#x60;1&#x60;: 最低手数料。&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済による売上に対し、fincode 決済最低手数料が適用されたことを示します。&lt;/span&gt;  | [optional] |
| **web_registration_fee** | **Integer** | fincode 振替口座 Web登録手数料（税抜）\\ ※ 口座振替のみ  | [optional] |
| **web_registration_fee_taxin** | **Integer** | fincode 振替口座 Web登録手数料（税込）\\ ※ 口座振替のみ  | [optional] |
| **web_registration_fee_tax** | **Integer** | fincode手数料 Web登録手数料消費税\\ ※ 口座振替のみ  | [optional] |
| **platform_fee** | **Integer** | プラットフォーム利用料（税抜）\\ ※ テナントのみ  | [optional] |
| **platform_fee_taxin** | **Integer** | プラットフォーム利用料（税込）\\ ※ テナントのみ  | [optional] |
| **platform_fee_rate** | **Float** | プラットフォーム利用料率\\ ※ テナントのみ  | [optional] |
| **fixed_fee_for_platform_fee** | **Integer** | プラットフォーム利用料率 最低手数料\\ ※ テナントのみ  | [optional] |
| **apply_type_for_platform_fee** | **Integer** | プラットフォーム利用料率 適用区分  - &#x60;0&#x60;: 料率。&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済による売上に対し、プラットフォーム利用料率が適用されたことを示します。&lt;/span&gt; - &#x60;1&#x60;: 最低手数料。&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済による売上に対し、プラットフォームが設定した最低利用料が適用されたことを示します。&lt;/span&gt;  ※ テナントのみ  | [optional] |
| **platform_web_registration_fee** | **Integer** | プラットフォームWeb登録利用料（税抜）\\ ※ 口座振替のみ\\ ※ テナントのみ  | [optional] |
| **platform_web_registration_fee_taxin** | **Integer** | プラットフォームWeb登録利用料（税込）\\ ※ 口座振替のみ\\ ※ テナントのみ  | [optional] |
| **platform_web_registration_fee_tax** | **Integer** | プラットフォームWeb登録利用料消費税\\ ※ 口座振替のみ\\ ※ テナントのみ  | [optional] |
| **processed_date** | **String** | 取引の確定処理を行った日時 \\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **aggregate_term_start** | **String** | 集計期間の開始日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **aggregate_term_end** | **String** | 集計期間の終了日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::AccountDetail.new(
  detail_id: 12345,
  shop_id: s_***********,
  scheduled_deposit_date: 2017/12/01 00:00,
  trade_type: null,
  payment_method: null,
  amount_correction_type: 課金訂正内容,
  account_id: 1234567,
  order_id: o_**********************,
  access_id: a_**********************,
  deposit_amount: 963,
  amount: 1000,
  tax: 0,
  fee_total: 36,
  fee_total_taxin: 37,
  fee_profit_tax: 1,
  fee_profit: 11,
  fee_cost: 25,
  fee_rate_total: 3.6,
  fixed_fee: null,
  apply_type: 0,
  web_registration_fee: 0,
  web_registration_fee_taxin: 0,
  web_registration_fee_tax: 0,
  platform_fee: 0,
  platform_fee_taxin: 0,
  platform_fee_rate: 0,
  fixed_fee_for_platform_fee: 0,
  apply_type_for_platform_fee: 0,
  platform_web_registration_fee: 0,
  platform_web_registration_fee_taxin: 0,
  platform_web_registration_fee_tax: 0,
  processed_date: 2022/05/16 23:59,
  aggregate_term_start: 2022/05/16 23:59,
  aggregate_term_end: 2022/05/16 23:59,
  client_field_1: 加盟店自由項目 1,
  client_field_2: 加盟店自由項目 2,
  client_field_3: 加盟店自由項目 3,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

