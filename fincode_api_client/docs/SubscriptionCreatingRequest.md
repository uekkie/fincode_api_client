# FincodeApiClient::SubscriptionCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | サブスクリプションID  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  |  |
| **plan_id** | **String** | プランID  |  |
| **customer_id** | **String** | 顧客ID  |  |
| **card_id** | **String** | （&#x60;pay_type &#x3D; Card&#x60;のみ）\\ このサブスクリプションで請求先となるカードのIDです。\\ 省略した場合、顧客のデフォルトカードが使用されます。  | [optional] |
| **payment_method_id** | **String** | （&#x60;pay_type &#x3D; Directdebit&#x60;のみ）\\ このサブスクリプションで請求先となる決済手段のIDです。\\ 省略した場合、顧客のデフォルト決済手段が使用されます。  | [optional] |
| **start_date** | **String** | 課金開始日\\ サブスクリプションの開始日です。\\ 登録が請求受付終了日の13:00を超える場合、課金開始日は翌月の同日となります。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  |  |
| **stop_date** | **String** | 課金停止日\\ サブスクリプションの停止日です。\\ 省略した場合、無期限となります。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **end_month_flag** | [**EndMonthFlag**](EndMonthFlag.md) |  | [optional] |
| **initial_amount** | **String** | 初回利用金額\\ \\ この値を設定すると、このサブスクリプションは初回の課金のみこの金額で課金し2回目以降はプラン情報がもつ&#x60;amount&#x60;の金額で課金します。  | [optional] |
| **initial_tax** | **String** | 初回税送料\\ \\ この値を設定すると、このサブスクリプションは初回の課金のみこの金額で課金し2回目以降はプラン情報がもつ&#x60;tax&#x60;の金額で課金します。  | [optional] |
| **remarks** | **String** | （&#x60;pay_type &#x3D; Directdebit&#x60;のみ）ご利用明細表示内容  - フォーマット：半角英数カナ／全角英数カナ／一部の記号／半角全角スペース - デフォルト： &#x60;ショップ名カナの先頭9文字&#x60;  ※ 利用可能な記号  - 半角：&#x60;.&#x60;、&#x60;(&#x60;、&#x60;)&#x60;、&#x60;–&#x60; - 全角：&#x60;．&#x60;、&#x60;（&#x60;、&#x60;）&#x60;、&#x60;ー&#x60;  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **send_url** | **String** | ※ 閉塞機能  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::SubscriptionCreatingRequest.new(
  id: su_*********************,
  pay_type: null,
  plan_id: pl_*********************,
  customer_id: c_**********************,
  card_id: cs_**********************,
  payment_method_id: pm_**********************,
  start_date: 2022/05/16 00:00:00.000,
  stop_date: 2022/06/16 00:00:00.000,
  end_month_flag: null,
  initial_amount: null,
  initial_tax: null,
  remarks: フィンコードショッ,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  send_url: null
)
```

