# FincodeApiClient::WebhookEventPaymentBulkBatchCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **bulk_payment_id** | **String** | 一括決済ID  | [optional] |
| **file_name** | **String** | 一括決済データファイル名  | [optional] |
| **status** | [**PaymentBulkStatus**](PaymentBulkStatus.md) |  | [optional] |
| **succeeded_count** | **String** | 成功件数\\ \\ 今回の一括決済課金において成功した決済の件数です。  | [optional] |
| **failed_count** | **String** | 失敗件数\\ \\ 今回の一括決済課金において失敗した決済の件数です。  | [optional] |
| **total_count** | **String** | 合計件数\\ \\ 今回の一括決済課金において発生した決済の合計件数です。  | [optional] |
| **pay_type** | [**PaymentBulkPayType**](PaymentBulkPayType.md) |  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentBulkBatchCard.new(
  shop_id: s_***********,
  bulk_payment_id: null,
  file_name: null,
  status: null,
  succeeded_count: null,
  failed_count: null,
  total_count: null,
  pay_type: null,
  event: null
)
```

