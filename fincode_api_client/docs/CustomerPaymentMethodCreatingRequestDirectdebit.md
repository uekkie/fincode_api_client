# FincodeApiClient::CustomerPaymentMethodCreatingRequestDirectdebit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_type** | [**DirectDebitApplicationType**](DirectDebitApplicationType.md) |  |  |
| **bank_code** | **String** | 金融機関コード。\\ 金融機関のコードです。\\ 例：&#x60;0310&#x60;  |  |
| **branch_code** | **String** | 支店コード\\ ゆうちょ銀行以外（&#x60;bank_code&#x60;が&#x60;9900&#x60;でない）のとき必須  | [optional] |
| **account_type** | [**AccountType**](AccountType.md) | 預金区分\\ ゆうちょ銀行以外（&#x60;bank_code&#x60;が&#x60;9900&#x60;でない）のとき必須  - &#x60;1&#x60;: 普通 - &#x60;2&#x60;: 当座  | [optional] |
| **account_number** | **String** | 口座番号\\ ゆうちょ銀行以外（&#x60;bank_code&#x60;が&#x60;9900&#x60;でない）のとき必須\\ 形式： 左0埋め  | [optional] |
| **account_name** | **String** | 口座名義  | [optional] |
| **account_name_kana** | **String** | 口座名義（カナ）\\ 形式： 半角英数カナ記号、全角英数カナ記号、一部の記号、半角全角スペース\\ \\ 使用可能な記号は以下の通りです。  - 半角：&#x60;.&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;–&#x60; - 全角：&#x60;．&#x60; &#x60;（&#x60; &#x60;）&#x60; &#x60;ー&#x60;  |  |
| **paper_application** | [**PaperApplication**](PaperApplication.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodCreatingRequestDirectdebit.new(
  application_type: null,
  bank_code: 0310,
  branch_code: 301,
  account_type: null,
  account_number: 1234567,
  account_name: イプシロン　太郎,
  account_name_kana: イプシロン　タロウ,
  paper_application: null
)
```

