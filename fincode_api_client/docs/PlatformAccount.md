# FincodeApiClient::PlatformAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | プラットフォーム利用料収入ID  | [optional] |
| **account_id** | **Integer** | 精算ID  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **deposit_amount** | **Integer** | プラットフォーム利用料収入 入金額\\ \\ プラットフォームショップに入金される（入金が予定されている）プラットフォーム利用料による売上金の額です。\\ 精算金額（&#x60;settlement_amount&#x60;）から振込手数料（&#x60;bank_transfer_fee&#x60;）を引いた金額に一致します。  | [optional] |
| **deposit_date** | **String** | プラットフォーム利用料収入 入金実績日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **scheduled_deposit_date** | **String** | プラットフォーム利用料収入 入金予定日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **aggregate_term_start** | **String** | プラットフォーム利用料収入 集計期間 開始日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **aggregate_term_end** | **String** | プラットフォーム利用料収入 集計期間 終了日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **payment_deadline** | **String** | （請求が発生した場合）支払期限日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **payment_completion_date** | **String** | （請求が発生した場合）請求日\\ 形式： &#x60;yyyy/MM/dd HH:MM&#x60;  | [optional] |
| **status_code** | [**DepositStatusCode**](DepositStatusCode.md) |  | [optional] |
| **count** | **Integer** | このプラットフォーム利用料収入に含まれる決済の件数  | [optional] |
| **settlement_amount** | **Integer** | 精算金額  | [optional] |
| **bank_transfer_fee** | **Integer** | 振込手数料  | [optional] |
| **total_amount** | **Integer** | このプラットフォーム利用料入金において精算の対象となった取引の総額。  | [optional] |
| **fee_amount** | **Integer** | このプラットフォーム利用料入金において精算の対象となった取引にかかるfincodeへの手数料  | [optional] |
| **taxable_fee_amount** | **Integer** | 決済手数料 課税対象額  | [optional] |
| **nontaxable_fee_amount** | **Integer** | 決済手数料 非課税対象額  | [optional] |
| **tax_amount** | **Integer** | 決済手数料 消費税額  | [optional] |
| **web_registration_fee_amount** | **Integer** | このプラットフォーム利用料入金の精算期間中に発生した振替口座のWeb登録手数料\\ ※ 口座振替のみ  | [optional] |
| **platform_fee_amount** | **Integer** | このプラットフォーム利用料入金において精算の対象となった取引にかかるプラットフォーム利用料  | [optional] |
| **platform_fee_tax_amount** | **Integer** | このプラットフォーム利用料入金において精算の対象となった取引にかかるプラットフォーム利用料の消費税  | [optional] |
| **platform_web_registration_fee_amount** | **Integer** | このプラットフォーム利用料入金の精算期間中に発生した、プラットフォームが設定した振替口座のWeb登録手数料  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **deposit_destination** | [**DepositTargetBankAccountInfo**](DepositTargetBankAccountInfo.md) | プラットフォーム利用料収入 入金先口座情報  | [optional] |
| **verified** | **Boolean** | 検証確認フラグ  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlatformAccount.new(
  id: sales_s_***********_******_*****,
  account_id: 123456,
  shop_id: s_***********,
  deposit_amount: 568,
  deposit_date: 2022/05/16 23:59,
  scheduled_deposit_date: 2022/05/16 23:59,
  aggregate_term_start: 2022/05/16 23:59,
  aggregate_term_end: 2022/05/16 23:59,
  payment_deadline: null,
  payment_completion_date: null,
  status_code: null,
  count: 3,
  settlement_amount: 568,
  bank_transfer_fee: 0,
  total_amount: 1000,
  fee_amount: 30,
  taxable_fee_amount: 0,
  nontaxable_fee_amount: 0,
  tax_amount: 2,
  web_registration_fee_amount: 400,
  platform_fee_amount: 0,
  platform_fee_tax_amount: 0,
  platform_web_registration_fee_amount: 0,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999,
  deposit_destination: null,
  verified: true
)
```

