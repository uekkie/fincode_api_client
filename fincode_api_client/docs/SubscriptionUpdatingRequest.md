# FincodeApiClient::SubscriptionUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  |  |
| **plan_id** | **String** | プランID  | [optional] |
| **start_date** | **String** | 課金開始日\\ サブスクリプションの開始日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **stop_date** | **String** | 課金停止日\\ サブスクリプションの停止日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **end_month_flag** | [**EndMonthFlag**](EndMonthFlag.md) |  | [optional] |
| **initial_amount** | **String** | 初回利用金額\\ \\ この値を設定すると、このサブスクリプションは初回の課金のみこの金額で課金し2回目以降はプラン情報がもつ&#x60;amount&#x60;の金額で課金します。  | [optional] |
| **initial_tax** | **String** | 初回税送料\\ \\ この値を設定すると、このサブスクリプションは初回の課金のみこの金額で課金し2回目以降はプラン情報がもつ&#x60;tax&#x60;の金額で課金します。  | [optional] |
| **remarks** | **String** | （&#x60;pay_type &#x3D; Directdebit&#x60;のみ）ご利用明細表示内容  - フォーマット：半角英数カナ／全角英数カナ／一部の記号／半角全角スペース - デフォルト： &#x60;ショップ名カナの先頭9文字&#x60;  ※ 利用可能な記号  - 半角：&#x60;.&#x60;、&#x60;(&#x60;、&#x60;)&#x60;、&#x60;–&#x60; - 全角：&#x60;．&#x60;、&#x60;（&#x60;、&#x60;）&#x60;、&#x60;ー&#x60;  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::SubscriptionUpdatingRequest.new(
  pay_type: null,
  plan_id: pl_*********************,
  start_date: 2022/05/16 00:00:00.000,
  stop_date: 2022/06/16 00:00:00.000,
  end_month_flag: null,
  initial_amount: null,
  initial_tax: null,
  remarks: フィンコードショッ,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

