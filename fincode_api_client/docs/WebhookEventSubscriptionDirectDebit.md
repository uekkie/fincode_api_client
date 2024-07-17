# FincodeApiClient::WebhookEventSubscriptionDirectDebit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **subscription_id** | **String** | サブスクリプションID  | [optional] |
| **plan_id** | **String** | プランID  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **payment_method_id** | **String** | 決済手段ID | [optional] |
| **default_flag** | [**PropertiesDefaultFlag**](PropertiesDefaultFlag.md) |  | [optional] |
| **status** | [**SubscriptionStatus**](SubscriptionStatus.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **remarks** | **String** | ご利用明細表示内容  | [optional] |
| **start_date** | **String** | 課金開始日\\ サブスクリプションの開始日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **stop_date** | **String** | 課金停止日\\ サブスクリプションの停止日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **next_charge_date** | **String** | 次回課金日\\ サブスクリプションの次回課金日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **end_month_flag** | [**EndMonthFlag**](EndMonthFlag.md) |  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventSubscriptionDirectDebit.new(
  shop_id: s_***********,
  subscription_id: su_*********************,
  plan_id: pl_*********************,
  customer_id: c_**********************,
  payment_method_id: pm_**********************,
  default_flag: null,
  status: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  remarks: フィンコードショッ,
  start_date: 2022/05/16 00:00:00.000,
  stop_date: 2022/06/16 00:00:00.000,
  next_charge_date: 2022/06/16 00:00:00.000,
  end_month_flag: null,
  pay_type: null,
  event: null
)
```

