# FincodeApiClient::WebhookEventRecurringBatchCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **succeeded** | **String** | 成功件数\\ \\ 今回のサブスクリプション課金において成功した決済の件数です。  | [optional] |
| **failed** | **String** | 失敗件数\\ \\ 今回のサブスクリプション課金において失敗した決済の件数です。  | [optional] |
| **total** | **String** | 合計件数\\ \\ 今回のサブスクリプション課金において発生した決済の合計件数です。  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **charge_date** | **String** | 課金日\\ 今回のサブスクリプションの課金日です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **pay_type** | [**SubscriptionPayType**](SubscriptionPayType.md) |  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventRecurringBatchCard.new(
  shop_id: s_***********,
  succeeded: null,
  failed: null,
  total: null,
  process_date: 2022/01/01 12:34:56.789,
  charge_date: 2022/06/16 00:00:00.000,
  pay_type: null,
  event: null
)
```

