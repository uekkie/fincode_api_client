# FincodeApiClient::SubscriptionUpdatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | サブスクリプションID  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  | [optional] |
| **plan_id** | **String** | プランID  | [optional] |
| **plan_name** | **String** | プラン名  | [optional] |
| **customer_id** | **String** | 顧客ID\\ \\ このサブスクリプションの請求先となる顧客のIDです。  | [optional] |
| **card_id** | **String** | カードID\\ \\ このサブスクリプションの決済に使用するカードのIDです。  | [optional] |
| **payment_method_id** | **String** | 決済手段ID\\ \\ このサブスクリプションの決済に使用する決済手段のIDです。  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **total_amount** | **Integer** | 合計金額\\ 利用金額と税送料の合計金額です。  | [optional] |
| **initial_amount** | **Integer** | 初回利用金額\\ \\ この値が設定されているとき、このサブスクリプションは初回の課金のみこの金額で課金し、2回目以降はプラン情報がもつ&#x60;amount&#x60;の金額で課金します。  | [optional] |
| **initial_tax** | **Integer** | 初回税送料\\ \\ この値が設定されているとき、このサブスクリプションは初回の課金のみこの金額で課金し、2回目以降はプラン情報がもつ&#x60;tax&#x60;の金額で課金します。  | [optional] |
| **initial_total_amount** | **Integer** | 初回合計金額\\ \\ &#x60;initial_amount&#x60;と&#x60;initial_tax&#x60;の合計金額です。  | [optional] |
| **status** | [**SubscriptionStatus**](SubscriptionStatus.md) |  | [optional] |
| **start_date** | **String** | 課金開始日\\ サブスクリプションの開始日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **next_charge_date** | **String** | 次回課金日\\ サブスクリプションの次回課金日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **stop_date** | **String** | 課金停止日\\ サブスクリプションの停止日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **end_month_flag** | **String** | 月末課金フラグ  - &#x60;0&#x60;：月末課金を行わない - &#x60;1&#x60;：月末課金を行う  | [optional] |
| **send_url** | **String** | ※ 閉塞機能  | [optional] |
| **error_code** | **String** | このサブスクリプションにおいて発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **remarks** | **String** | ご利用明細表示内容  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::SubscriptionUpdatingResponse.new(
  id: su_*********************,
  shop_id: s_***********,
  pay_type: null,
  plan_id: pl_*********************,
  plan_name: Basic Plan,
  customer_id: c_**********************,
  card_id: cs_**********************,
  payment_method_id: pm_**********************,
  amount: 1000,
  tax: 100,
  total_amount: 1100,
  initial_amount: null,
  initial_tax: null,
  initial_total_amount: null,
  status: null,
  start_date: 2022/05/16 00:00:00.000,
  next_charge_date: 2022/06/16 00:00:00.000,
  stop_date: 2022/06/16 00:00:00.000,
  end_month_flag: null,
  send_url: null,
  error_code: E**********,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  remarks: フィンコードショッ,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

