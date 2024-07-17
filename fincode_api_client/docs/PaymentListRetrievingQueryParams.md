# FincodeApiClient::PaymentListRetrievingQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ 一覧で取得する対象の決済種別を指定します。  - &#x60;Card&#x60;: カード - &#x60;Konbini&#x60;: コンビニ決済 - &#x60;Paypay&#x60;: PayPay - &#x60;Applepay&#x60;: Apple Pay - &#x60;Directdebit&#x60;: 口座振替  |  |
| **keyword** | **String** | 加盟店自由項目1 ~ 3（&#x60;client_field_*&#x60;）を対象とした部分一致検索を行います。  | [optional] |
| **total_amount_min** | **Integer** | 合計金額（始値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以上の合計金額を持つ決済情報を取得します。  | [optional] |
| **total_amount_max** | **Integer** | 合計金額（終値）\\ 利用金額と税送料の合計額（&#x60;total_amount&#x60;）を対象に範囲検索を行います。この値以下の合計金額を持つ決済情報を取得します。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ 指定した顧客IDに紐づく決済情報から一覧で取得します。  | [optional] |
| **process_date_from** | **String** | 処理日時（始値）\\ 処理日時（&#x60;process_date&#x60;）を対象に範囲検索を行います。この日付以降に処理された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **process_date_to** | **String** | 処理日時（終値）\\ 処理日時（&#x60;process_date&#x60;）を対象に範囲検索を行います。この日付以前に処理された決済情報を取得します。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentListRetrievingQueryParams.new(
  pay_type: null,
  keyword: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  total_amount_min: null,
  total_amount_max: null,
  customer_id: c_**********************,
  process_date_from: null,
  process_date_to: null
)
```

