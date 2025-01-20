# FincodeApiClient::Directdebit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_type** | [**DirectDebitApplicationType**](DirectDebitApplicationType.md) |  | [optional] |
| **expected_billable_date** | **String** | 請求可能予定日。\\ 口座登録後、実際に請求依頼が可能となると予定される日時です。\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **last_withdrawal_date** | **String** | 最終引落日。\\ 金融機関によってこの口座から実際に引き落とされた実績日のうち、最も新しい日時です。\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **last_result_code** | [**DirectDebitLastResultCode**](DirectDebitLastResultCode.md) |  | [optional] |
| **bank_type** | **String** | 金融機関種別。  - &#x60;0&#x60;: ゆうちょ銀行以外の金融機関 - &#x60;1&#x60;: ゆうちょ銀行  | [optional] |
| **bank_code** | **String** | 金融機関コード。\\ 金融機関のコードです。\\ 例：&#x60;0310&#x60;  | [optional] |
| **bank_name** | **String** | 金融機関名  | [optional] |
| **branch_code** | **String** | 支店コード。\\ 金融機関の支店コードです。\\ 例：&#x60;001&#x60;  | [optional] |
| **branch_name** | **String** | 支店名  | [optional] |
| **account_type** | **String** | 口座種別。  - &#x60;0&#x60;: 普通預金 - &#x60;1&#x60;: 当座預金  | [optional] |
| **account_number** | **String** | 口座番号  | [optional] |
| **postal_account_number_1** | **String** | ゆうちょ 預金記号  | [optional] |
| **postal_account_number_2** | **String** | ゆうちょ 預金番号  | [optional] |
| **account_name** | **String** | 口座名義  | [optional] |
| **account_name_kana** | **String** | 口座名義（カナ）  | [optional] |
| **paper_application** | [**DirectdebitPaperApplication**](DirectdebitPaperApplication.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::Directdebit.new(
  application_type: null,
  expected_billable_date: 2022/05/16 23:59:59.999,
  last_withdrawal_date: 2022/05/16 23:59:59.999,
  last_result_code: null,
  bank_type: 0,
  bank_code: 0310,
  bank_name: GMOあおぞらネット銀行,
  branch_code: 301,
  branch_name: うみ支店,
  account_type: 1,
  account_number: 1234567,
  postal_account_number_1: 12345,
  postal_account_number_2: 06789012,
  account_name: イプシロン　太郎,
  account_name_kana: イプシロン　タロウ,
  paper_application: null
)
```

