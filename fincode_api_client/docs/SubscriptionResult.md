# FincodeApiClient::SubscriptionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | サブスクリプションID  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  | [optional] |
| **status** | [**SubscriptionResultStatus**](SubscriptionResultStatus.md) |  | [optional] |
| **process_date** | **String** | 処理日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **plan_id** | **String** | プランID  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **total_amount** | **Integer** | 合計金額\\ 利用金額と税送料の合計金額です。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ サブスクリプションで請求した顧客のIDです。  | [optional] |
| **payment_method_id** | **String** | 決済手段ID\\ サブスクリプションで使用された決済手段のIDです。  | [optional] |
| **card_id** | **String** | カードID\\ サブスクリプションで使用されたカードのIDです。  | [optional] |
| **card_no** | **Object** |  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **send_url** | **String** | ※ 閉塞機能  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **interval_pattern** | [**PropertiesIntervalPattern**](PropertiesIntervalPattern.md) |  | [optional] |
| **interval_count** | [**PropertiesIntervalCount**](PropertiesIntervalCount.md) |  | [optional] |
| **remarks** | **String** | ご利用明細表示内容\\ デフォルト：ショップ名カナの先頭9文字  | [optional] |
| **error_code** | **String** | この課金において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::SubscriptionResult.new(
  id: su_*********************,
  pay_type: null,
  status: null,
  process_date: 2022/05/16 23:59:59.999,
  plan_id: pl_*********************,
  amount: 1000,
  tax: 100,
  total_amount: 1100,
  customer_id: c_**********************,
  payment_method_id: pm_**********************,
  card_id: cs_**********************,
  card_no: null,
  shop_id: s_***********,
  access_id: a_**********************,
  send_url: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  interval_pattern: null,
  interval_count: null,
  remarks: カ）ジーエムオーイ,
  error_code: E**********,
  created: 2022/05/16 23:59:59.999
)
```

